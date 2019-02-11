.class public Lcom/oppo/RomUpdateHelper;
.super Ljava/lang/Object;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/RomUpdateHelper$UpdateInfo;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field public static final ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final TAG:Ljava/lang/String; = "RomUpdateHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataFilePath:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field private mSystemFilePath:Ljava/lang/String;

.field private mUpdateInfo1:Lcom/oppo/RomUpdateHelper$UpdateInfo;

.field private mUpdateInfo2:Lcom/oppo/RomUpdateHelper$UpdateInfo;

.field private which2use:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/RomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "systemFile"    # Ljava/lang/String;
    .param p4, "dataFile"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/RomUpdateHelper;->which2use:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/RomUpdateHelper;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/oppo/RomUpdateHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/oppo/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/oppo/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/oppo/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/RomUpdateHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/RomUpdateHelper;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method private getDataFromProvider()Ljava/lang/String;
    .locals 13

    .prologue
    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 132
    .local v6, "configVersion":I
    const/4 v9, 0x0

    .line 133
    .local v9, "returnStr":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "xml"

    aput-object v1, v2, v0

    .line 135
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 149
    if-eqz v7, :cond_0

    .line 150
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v7, 0x0

    :cond_0
    move-object v10, v9

    .line 154
    .end local v9    # "returnStr":Ljava/lang/String;
    .local v10, "returnStr":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 136
    .end local v10    # "returnStr":Ljava/lang/String;
    .restart local v9    # "returnStr":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oppo/RomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filtername=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 139
    const-string/jumbo v0, "version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 140
    .local v11, "versioncolumnIndex":I
    const-string/jumbo v0, "xml"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 141
    .local v12, "xmlcolumnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 142
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 143
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 144
    const-string v0, "RomUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "White List updated, version = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v11    # "versioncolumnIndex":I
    .end local v12    # "xmlcolumnIndex":I
    :cond_2
    if-eqz v7, :cond_3

    .line 150
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v7, 0x0

    :cond_3
    :goto_1
    move-object v10, v9

    .line 154
    .end local v9    # "returnStr":Ljava/lang/String;
    .restart local v10    # "returnStr":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v10    # "returnStr":Ljava/lang/String;
    .restart local v9    # "returnStr":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 147
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "RomUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get white list data from provider, because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-eqz v7, :cond_3

    .line 150
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v7, 0x0

    goto :goto_1

    .line 149
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 150
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private saveToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 120
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 121
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v3, 0x1

    .line 126
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setFlip()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/oppo/RomUpdateHelper;->which2use:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/RomUpdateHelper;->which2use:Z

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "which2use = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/RomUpdateHelper;->which2use:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/RomUpdateHelper;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo1:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Lcom/oppo/RomUpdateHelper$UpdateInfo;->dump()V

    .line 204
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo2:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Lcom/oppo/RomUpdateHelper$UpdateInfo;->dump()V

    .line 205
    return-void
.end method

.method public getUpdateFromProvider()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/RomUpdateHelper;->getDataFromProvider()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "tmp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 199
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/oppo/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/oppo/RomUpdateHelper;->saveToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oppo/RomUpdateHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oppo/RomUpdateHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/RomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/oppo/RomUpdateHelper;->setFlip()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v1    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/oppo/RomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo1:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo2:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    goto :goto_0

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/RomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo2:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo1:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/oppo/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oppo/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lcom/oppo/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/RomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/RomUpdateHelper;->parseContentFromXML(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initUpdateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/oppo/RomUpdateHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oppo/RomUpdateHelper$1;

    invoke-direct {v2, p0}, Lcom/oppo/RomUpdateHelper$1;-><init>(Lcom/oppo/RomUpdateHelper;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 208
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 213
    return-void
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-virtual {p0, v1}, Lcom/oppo/RomUpdateHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, v1}, Lcom/oppo/RomUpdateHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/RomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 158
    if-nez p1, :cond_1

    const-string v6, ""

    .line 180
    :cond_0
    :goto_0
    return-object v6

    .line 159
    :cond_1
    const/4 v3, 0x0

    .line 161
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 163
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 165
    .local v5, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 169
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 170
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    const/4 v6, 0x0

    goto :goto_0

    .line 168
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 175
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 172
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 176
    :catch_4
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 175
    :goto_5
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 178
    :cond_4
    :goto_6
    throw v6

    .line 176
    :catch_5
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 171
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 169
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method protected setUpdateInfo(Lcom/oppo/RomUpdateHelper$UpdateInfo;Lcom/oppo/RomUpdateHelper$UpdateInfo;)V
    .locals 0
    .param p1, "updateInfo1"    # Lcom/oppo/RomUpdateHelper$UpdateInfo;
    .param p2, "updateInfo2"    # Lcom/oppo/RomUpdateHelper$UpdateInfo;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo1:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    .line 86
    iput-object p2, p0, Lcom/oppo/RomUpdateHelper;->mUpdateInfo2:Lcom/oppo/RomUpdateHelper$UpdateInfo;

    .line 87
    return-void
.end method
