.class public Lcom/android/server/am/OppoProcessWhiteListUtils;
.super Ljava/lang/Object;
.source "OppoProcessWhiteListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_CONFIG:I = 0xd0

.field private static final PROCESS_FILTER_LIST_XML:Ljava/lang/String; = "data/system/oppoguardelf/sys_ams_processfilter_list.xml"

.field private static final TAG:Ljava/lang/String; = "OppoProcessWhiteListUtils"

.field private static mFileUtils:Lcom/android/server/am/OppoProcessWhiteListUtils;


# instance fields
.field private mAuthorizedProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileObserverUtil:Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;

.field private mProcessWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileUtils:Lcom/android/server/am/OppoProcessWhiteListUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mProcessWhiteList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mAuthorizedProcessList:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileObserverUtil:Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessWhiteListUtils;->initDir()V

    .line 49
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessWhiteListUtils;->readXmlFile()Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessWhiteListUtils;->initFileObserver()V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/OppoProcessWhiteListUtils;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileUtils:Lcom/android/server/am/OppoProcessWhiteListUtils;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/server/am/OppoProcessWhiteListUtils;

    invoke-direct {v0}, Lcom/android/server/am/OppoProcessWhiteListUtils;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileUtils:Lcom/android/server/am/OppoProcessWhiteListUtils;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileUtils:Lcom/android/server/am/OppoProcessWhiteListUtils;

    return-object v0
.end method


# virtual methods
.method public getAuthorizedProcessList()Ljava/util/List;
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
    .line 124
    iget-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mAuthorizedProcessList:Ljava/util/List;

    return-object v0
.end method

.method public getProcessWhiteList()Ljava/util/List;
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
    .line 120
    iget-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mProcessWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public initDir()V
    .locals 3

    .prologue
    .line 61
    new-instance v1, Ljava/io/File;

    const-string v2, "data/system/oppoguardelf/sys_ams_processfilter_list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "processWhiteListFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ie":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public initFileObserver()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;

    const-string v1, "data/system/oppoguardelf/sys_ams_processfilter_list.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;-><init>(Lcom/android/server/am/OppoProcessWhiteListUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileObserverUtil:Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;

    .line 129
    iget-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mFileObserverUtil:Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;

    invoke-virtual {v0}, Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;->startWatching()V

    .line 130
    return-void
.end method

.method public readXmlFile()Ljava/util/List;
    .locals 14
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
    .line 72
    new-instance v4, Ljava/io/File;

    const-string v10, "data/system/oppoguardelf/sys_ams_processfilter_list.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "processWhiteListFile":Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mProcessWhiteList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 75
    iget-object v10, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mProcessWhiteList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 78
    :cond_0
    const/4 v5, 0x0

    .line 80
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 82
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v3, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 86
    .local v8, "type":I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    .line 87
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "tagName":Ljava/lang/String;
    const-string v10, "p"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    const/4 v10, 0x0

    const-string v11, "att"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 92
    iget-object v10, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mProcessWhiteList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v10, "q"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 96
    const/4 v10, 0x0

    const-string v11, "att"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "packageName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 98
    iget-object v10, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mAuthorizedProcessList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    .line 109
    if-eqz v6, :cond_4

    .line 110
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v5, v6

    .line 116
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/OppoProcessWhiteListUtils;->mProcessWhiteList:Ljava/util/List;

    return-object v10

    .line 112
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "OppoProcessWhiteListUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 115
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    .line 104
    .local v1, "ie":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    if-eqz v5, :cond_5

    .line 110
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 112
    :catch_2
    move-exception v0

    .line 113
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "OppoProcessWhiteListUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ie":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 106
    .local v9, "xe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-eqz v5, :cond_5

    .line 110
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 112
    :catch_4
    move-exception v0

    .line 113
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "OppoProcessWhiteListUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "xe":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    .line 109
    :goto_3
    if-eqz v5, :cond_6

    .line 110
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 114
    :cond_6
    :goto_4
    throw v10

    .line 112
    :catch_5
    move-exception v0

    .line 113
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "OppoProcessWhiteListUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to close state FileInputStream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 105
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 103
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method
