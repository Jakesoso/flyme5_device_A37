.class public Lcom/mediatek/geocoding/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static final NumberHeadWithIDToByteFilePath:Ljava/lang/String; = "/system/etc/NumberHeadWithIDToByte"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field private mIsDBReady:Z

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 65
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 70
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 71
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 74
    iput-object p1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->openNumberHeadWithIDToByteFile()V

    .line 77
    return-void
.end method

.method private binarySearchNumberHead(I)I
    .locals 5
    .param p1, "target"    # I

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "low":I
    iget-object v4, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 238
    .local v3, "upper":I
    :goto_0
    if-gt v0, v3, :cond_1

    .line 239
    add-int v4, v0, v3

    div-int/lit8 v1, v4, 0x2

    .line 240
    .local v1, "mid":I
    iget-object v4, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    div-int/lit16 v2, v4, 0x3e8

    .line 241
    .local v2, "nNumberHead":I
    if-ge v2, p1, :cond_0

    .line 242
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    if-le v2, p1, :cond_2

    .line 244
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    .line 249
    .end local v1    # "mid":I
    .end local v2    # "nNumberHead":I
    :cond_1
    const/4 v1, -0x1

    :cond_2
    return v1
.end method

.method private canQuery()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private closeDatabase()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 213
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to close GeoCoding database!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/mediatek/geocoding/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/mediatek/geocoding/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 91
    const-string v0, "GeoCodingQuery"

    const-string v2, "getInstance(): myInstance is created"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;-><init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 190
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/sql/SQLException;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method

.method private openNumberHeadWithIDToByteFile()V
    .locals 9

    .prologue
    .line 217
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/system/etc/NumberHeadWithIDToByte"

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 218
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 219
    .local v4, "nCount":J
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 220
    .local v8, "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v8}, Ljava/nio/MappedByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v4    # "nCount":J
    .end local v8    # "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v6

    .line 222
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "GeoCodingQuery"

    const-string v1, "Failed to open NumberHead file!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v7

    .line 228
    .local v7, "e1":Ljava/io/IOException;
    const-string v0, "GeoCodingQuery"

    const-string v1, "Failed to close NumberHead file!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v15, ""

    .line 111
    .local v15, "returnValue":Ljava/lang/String;
    const/16 v12, 0xb

    .line 112
    .local v12, "numberValidLength":I
    const/4 v10, 0x4

    .line 114
    .local v10, "numberTailLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 115
    const-string v19, "GeoCodingQuery"

    const-string v20, "Database is not opened !"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v15

    .line 182
    .end local v15    # "returnValue":Ljava/lang/String;
    .local v16, "returnValue":Ljava/lang/String;
    :goto_0
    return-object v16

    .line 119
    .end local v16    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    :cond_0
    const-string v19, "GeoCodingQuery"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "number = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v19, " "

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, "queryNumber":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 123
    .local v11, "numberTotalLength":I
    if-ge v11, v12, :cond_1

    .line 124
    const-string v19, "GeoCodingQuery"

    const-string v20, "The length of dial number is less than 11 !"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v15

    .line 125
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v16    # "returnValue":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v16    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    :cond_1
    const-string v19, "+"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "00"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 130
    :cond_2
    const-string v19, "+86"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, "0086"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 131
    const-string v19, "GeoCodingQuery"

    const-string v20, "The dial number is a international number and didn\'t start with +86!"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v15

    .line 132
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v16    # "returnValue":Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v16    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .line 137
    .local v4, "countryIso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "country_detector"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/CountryDetector;

    .line 138
    .local v6, "detector":Landroid/location/CountryDetector;
    if-eqz v6, :cond_4

    .line 139
    invoke-virtual {v6}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    .line 140
    .local v3, "country":Landroid/location/Country;
    if-eqz v3, :cond_4

    .line 141
    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 144
    .end local v3    # "country":Landroid/location/Country;
    :cond_4
    if-nez v4, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 147
    :cond_5
    const-string v19, "cn"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 148
    const-string v19, "GeoCodingQuery"

    const-string v20, "The dial number is not at CN!"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v15

    .line 149
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v16    # "returnValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 153
    .end local v4    # "countryIso":Ljava/lang/String;
    .end local v6    # "detector":Landroid/location/CountryDetector;
    .end local v16    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    :cond_6
    sub-int v18, v11, v12

    .line 154
    .local v18, "startIndex":I
    sub-int v7, v11, v10

    .line 155
    .local v7, "endIndex":I
    move/from16 v0, v18

    invoke-virtual {v13, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 156
    const-string v19, "GeoCodingQuery"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Query number = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v14, 0x7

    .line 159
    .local v14, "queryNumberLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_9

    .line 161
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x39

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    :cond_7
    move-object/from16 v16, v15

    .line 162
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v16    # "returnValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .end local v16    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 166
    :cond_9
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/geocoding/GeoCodingQuery;->binarySearchNumberHead(I)I

    move-result v9

    .line 167
    .local v9, "index":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v9, :cond_c

    .line 168
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Select city_name from city where _id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v20

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, "sqlCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 171
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_a

    .line 172
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    :cond_a
    if-eqz v5, :cond_b

    .line 177
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v17    # "sqlCmd":Ljava/lang/String;
    :cond_b
    :goto_2
    move-object/from16 v16, v15

    .line 182
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v16    # "returnValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 180
    .end local v16    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    :cond_c
    const-string v19, "GeoCodingQuery"

    const-string v20, "The query number is not found in \'NumberHeadWithIDToByte\' database!"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
