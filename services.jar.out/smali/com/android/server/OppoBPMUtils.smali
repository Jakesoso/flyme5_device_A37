.class public Lcom/android/server/OppoBPMUtils;
.super Ljava/lang/Object;
.source "OppoBPMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoBPMUtils$FileObserverUtil;
    }
.end annotation


# static fields
.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final SYS_PURE_BKG_CONFIG:Ljava/lang/String; = "/data/data_bpm/sys_purebkg_config.xml"

.field private static final TAG:Ljava/lang/String; = "OppoBPMUtils"

.field private static mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;


# instance fields
.field private LOCAL_LOGV:Z

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileObserUtil:Lcom/android/server/OppoBPMUtils$FileObserverUtil;

.field private mLimitBgStats:Z

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentNum:I

.field private mRecentStore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    .line 46
    iput-boolean v1, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/OppoBPMUtils;->mRecentNum:I

    .line 54
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/OppoBPMUtils;->mRecentStore:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OppoBPMUtils;->mFileObserUtil:Lcom/android/server/OppoBPMUtils$FileObserverUtil;

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OppoBPMUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoBPMUtils;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadRecentTaskConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OppoBPMUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoBPMUtils;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/OppoBPMUtils;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/server/OppoBPMUtils;

    invoke-direct {v0}, Lcom/android/server/OppoBPMUtils;-><init>()V

    sput-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    return-object v0
.end method

.method private initFileObserverUtil()V
    .locals 2

    .prologue
    .line 676
    new-instance v0, Lcom/android/server/OppoBPMUtils$FileObserverUtil;

    const-string v1, "/data/data_bpm/sys_purebkg_config.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/OppoBPMUtils$FileObserverUtil;-><init>(Lcom/android/server/OppoBPMUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OppoBPMUtils;->mFileObserUtil:Lcom/android/server/OppoBPMUtils$FileObserverUtil;

    .line 677
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils;->mFileObserUtil:Lcom/android/server/OppoBPMUtils$FileObserverUtil;

    invoke-virtual {v0}, Lcom/android/server/OppoBPMUtils$FileObserverUtil;->startWatching()V

    .line 678
    return-void
.end method

.method private loadRecentTaskConfig()V
    .locals 7

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data_bpm/sys_purebkg_config.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "configFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 207
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->readConfigFromFile(Ljava/io/FileInputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 209
    if-eqz v3, :cond_1

    .line 211
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 221
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v2    # "ie":Ljava/io/IOException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 214
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close config inputStream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 219
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read config."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadStateLocked()V
    .locals 6

    .prologue
    .line 171
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "settingsFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 175
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 176
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/OppoBPMUtils;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    if-eqz v2, :cond_0

    .line 180
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 188
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadStatusLocked()V
    .locals 6

    .prologue
    .line 380
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "settingsFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 383
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/OppoBPMUtils;->readStatusFromFile(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    if-eqz v2, :cond_0

    .line 387
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 390
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 395
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAppWidgetFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 636
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 637
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 641
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 642
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 643
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 645
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 647
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 671
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 667
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 652
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_1
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 667
    :catch_2
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 667
    :catch_4
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 657
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 667
    :catch_6
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 658
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 659
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_0

    .line 667
    :catch_8
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 664
    if-eqz p1, :cond_2

    .line 665
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_0

    .line 667
    :catch_a
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 663
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 664
    if-eqz p1, :cond_3

    .line 665
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 669
    :cond_3
    :goto_1
    throw v5

    .line 667
    :catch_b
    move-exception v0

    .line 668
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private readConfigFromFile(Ljava/io/FileInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 226
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 231
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 232
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "tag":Ljava/lang/String;
    const-string v4, "recentNum"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBPMUtils;->mRecentNum:I

    .line 236
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 237
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRecentNum read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/OppoBPMUtils;->mRecentNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 273
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 239
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recentNum:Failed to translate the string to int"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_4
    const-string v4, "OppoBPMUtils"

    const-string v5, "failed parsing "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 269
    :catch_2
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_3
    :try_start_6
    const-string v4, "recentStore"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    :try_start_7
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBPMUtils;->mRecentStore:I

    .line 245
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 246
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recentStore read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/OppoBPMUtils;->mRecentStore:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 248
    :catch_3
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recentStore:Failed to translate the string to int"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    :catch_4
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string v4, "OppoBPMUtils"

    const-string v5, "failed parsing "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 269
    :catch_5
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    :catch_6
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 258
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_7
    move-exception v0

    .line 259
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b
    const-string v4, "OppoBPMUtils"

    const-string v5, "failed parsing "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_1

    .line 269
    :catch_8
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_d
    const-string v4, "OppoBPMUtils"

    const-string v5, "failed parsing "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    :try_start_e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_1

    .line 269
    :catch_a
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_f
    const-string v4, "OppoBPMUtils"

    const-string v5, "failed parsing "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_1

    .line 269
    :catch_c
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 266
    if-eqz p1, :cond_4

    .line 267
    :try_start_11
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 271
    :cond_4
    :goto_2
    throw v4

    .line 269
    :catch_d
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 342
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 343
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 348
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 349
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 353
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 373
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 373
    :catch_2
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 373
    :catch_4
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 363
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 373
    :catch_6
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_0

    .line 373
    :catch_8
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 370
    if-eqz p1, :cond_2

    .line 371
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_0

    .line 373
    :catch_a
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 370
    if-eqz p1, :cond_3

    .line 371
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 375
    :cond_3
    :goto_1
    throw v5

    .line 373
    :catch_b
    move-exception v0

    .line 374
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private readStatusFromFile(Ljava/io/FileInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v7, 0x1

    .line 457
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 458
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 463
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 464
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 466
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "sts":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 468
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v2    # "sts":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne v4, v7, :cond_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 496
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 471
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "sts":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 477
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "sts":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 492
    :catch_1
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 492
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_2
    move-exception v0

    .line 493
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_3
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 492
    :catch_4
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 481
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 482
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 492
    :catch_6
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 483
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 484
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 492
    :catch_8
    move-exception v0

    .line 493
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_1

    .line 492
    :catch_a
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 489
    if-eqz p1, :cond_4

    .line 490
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 494
    :cond_4
    :goto_2
    throw v5

    .line 492
    :catch_b
    move-exception v0

    .line 493
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveAppWidgetLocked()V
    .locals 9

    .prologue
    .line 568
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-enter v5

    .line 569
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 571
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 572
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAppWidgetLocked start, mAppWidgetList.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 577
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 578
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_2
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->writeAppWidgetToFileLocked(Ljava/io/FileOutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 594
    if-eqz v3, :cond_6

    .line 596
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v3

    .line 603
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v5

    .line 604
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 603
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 597
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 598
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    .line 599
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    move-object v2, v3

    .line 600
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 590
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 592
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 594
    if-eqz v2, :cond_3

    .line 596
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 597
    :catch_3
    move-exception v0

    .line 598
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 599
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 594
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 596
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 600
    :cond_5
    :goto_4
    :try_start_b
    throw v4

    .line 597
    :catch_4
    move-exception v0

    .line 598
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v6, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v6, :cond_5

    .line 599
    const-string v6, "OppoBPMUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close state FileInputStream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 594
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 590
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveStateLocked()V
    .locals 8

    .prologue
    .line 277
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 279
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 280
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveStateLocked start, mPackageList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 288
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_2
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    if-eqz v3, :cond_6

    .line 303
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 310
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    .line 306
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v3

    .line 307
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 297
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    if-eqz v2, :cond_3

    .line 303
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 304
    :catch_3
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 306
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 303
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 307
    :cond_5
    :goto_4
    throw v4

    .line 304
    :catch_4
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_5

    .line 306
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 297
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveStatusLocked()V
    .locals 8

    .prologue
    .line 400
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 403
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 409
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_1
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->writeStatusToFile(Ljava/io/FileOutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 422
    if-eqz v3, :cond_5

    .line 424
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 431
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 426
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 427
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v3

    .line 428
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    if-eqz v2, :cond_2

    .line 424
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 425
    :catch_3
    move-exception v0

    .line 426
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    .line 427
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_4

    .line 424
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 428
    :cond_4
    :goto_4
    throw v4

    .line 425
    :catch_4
    move-exception v0

    .line 426
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_4

    .line 427
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 418
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_5
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private writeAppWidgetToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 8
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v5, 0x1

    .line 609
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 610
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 611
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 612
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 615
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 616
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 617
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 618
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    const/4 v6, 0x0

    const-string v7, "att"

    invoke-interface {v3, v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v5

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_2

    .line 629
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 8
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v5, 0x1

    .line 315
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 316
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 317
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 318
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 321
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 322
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 324
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const/4 v6, 0x0

    const-string v7, "att"

    invoke-interface {v3, v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v5

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_2

    .line 335
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeStatusToFile(Ljava/io/FileOutputStream;)Z
    .locals 6
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v3, 0x1

    .line 435
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 436
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v1, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 437
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 438
    const/4 v4, 0x0

    const-string v5, "gs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    if-eqz v4, :cond_0

    const-string v2, "true"

    .line 441
    .local v2, "sts":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    const-string v5, "p"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const/4 v4, 0x0

    const-string v5, "att"

    invoke-interface {v1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const/4 v4, 0x0

    const-string v5, "p"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const/4 v4, 0x0

    const-string v5, "gs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 451
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "sts":Ljava/lang/String;
    :goto_1
    return v3

    .line 440
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const-string v2, "false"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_1

    .line 450
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPkgToAppWidgetList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/server/OppoBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    .line 505
    if-nez p1, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveAppWidgetLocked()V

    .line 511
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addPkgToTrustList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStateLocked()V

    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "isExist":Z
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const/4 v1, 0x1

    .line 134
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStateLocked()V

    .line 137
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getLimitBgStats()Z
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStatusLocked()V

    .line 107
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "OppoBPMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitBgStats mLimitBgStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    return v0
.end method

.method public getRecentTaskNum()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/OppoBPMUtils;->mRecentNum:I

    return v0
.end method

.method public getRecentTaskStore()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/OppoBPMUtils;->mRecentStore:I

    return v0
.end method

.method public getTrustList()Ljava/util/List;
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
    .line 78
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStateLocked()V

    .line 79
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadRecentTaskConfig()V

    .line 66
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->initFileObserverUtil()V

    .line 67
    return-void
.end method

.method public loadAppWidgetLocked()Ljava/util/List;
    .locals 8
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
    .line 542
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-enter v5

    .line 543
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v1, "settingsFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    const/4 v2, 0x0

    .line 548
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 549
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->readAppWidgetFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 554
    if-eqz v3, :cond_0

    .line 556
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 562
    :cond_0
    :goto_0
    :try_start_4
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    return-object v4

    .line 557
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 559
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "settingsFile":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 550
    .restart local v1    # "settingsFile":Ljava/io/File;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 551
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 552
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 554
    :cond_1
    if-eqz v2, :cond_2

    .line 556
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 562
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    :try_start_7
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    goto :goto_1

    .line 557
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 558
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    .line 559
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v2, :cond_3

    .line 556
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 562
    :cond_3
    :goto_5
    :try_start_9
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    goto :goto_1

    .line 557
    :catch_3
    move-exception v0

    .line 558
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 559
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 550
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public removePkgFromAppWidgetList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/android/server/OppoBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "isExist":Z
    const/4 v2, 0x0

    .line 518
    .local v2, "location":I
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 520
    .local v1, "listSize":I
    if-nez p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v4

    .line 524
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 525
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 526
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 527
    const/4 v0, 0x1

    .line 532
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 533
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 534
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveAppWidgetLocked()V

    move v4, v5

    .line 535
    goto :goto_0

    .line 524
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removePkgFromTrustList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStateLocked()V

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "isExist":Z
    const/4 v2, 0x0

    .line 147
    .local v2, "location":I
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 149
    .local v1, "listSize":I
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v4

    .line 153
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 154
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    const/4 v0, 0x1

    .line 161
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStateLocked()V

    move v4, v5

    .line 164
    goto :goto_0

    .line 153
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setLimitBgStats(Z)V
    .locals 3
    .param p1, "limitBgStats"    # Z

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "OppoBPMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLimitBgStats limitBgStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    .line 116
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStatusLocked()V

    .line 117
    return-void
.end method

.method public setTrustList(Ljava/util/List;)V
    .locals 5
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
    .line 94
    .local p1, "trustList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    .local v1, "listNum":I
    iget-boolean v2, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "OppoBPMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTrustList begin, listNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStateLocked()V

    .line 103
    return-void
.end method
