.class public Loppo/content/res/OppoThemeZipFile;
.super Ljava/lang/Object;
.source "OppoThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final OPPO_PACKAGE:Ljava/lang/String; = "oppo"

.field private static final RESOURCES_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OppoThemeZipFile"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Loppo/content/res/OppoThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mCharSequences:Landroid/util/SparseArray;

.field private mIntegers:Landroid/util/SparseArray;

.field private mLastModifyTime:J

.field private mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "assets/colors.xml"

    aput-object v1, v0, v2

    const-string v1, "framework-res/assets/colors.xml"

    aput-object v1, v0, v3

    const-string/jumbo v1, "oppo-framework-res/assets/colors.xml"

    aput-object v1, v0, v4

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "res/drawable"

    aput-object v1, v0, v2

    const-string v1, "framework-res/res/drawable"

    aput-object v1, v0, v3

    const-string/jumbo v1, "oppo-framework-res/res/drawable"

    aput-object v1, v0, v4

    const-string/jumbo v1, "res/drawable"

    aput-object v1, v0, v5

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    .line 92
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Loppo/content/res/OppoThemeZipFile;->sDensity:I

    .line 95
    sget v0, Loppo/content/res/OppoThemeZipFile;->sDensity:I

    invoke-static {v0}, Loppo/util/OppoDisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Loppo/content/res/OppoThemeResources$MetaData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resources"    # Landroid/content/res/Resources;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeZipFile;->DEBUG:Z

    .line 82
    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 83
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 84
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 85
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 86
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 90
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 101
    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 104
    iput-object p4, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 105
    iput-object p3, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 108
    return-void
.end method

.method private clean()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 242
    :try_start_0
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 251
    :cond_0
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 252
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 253
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 246
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "OppoThemeZipFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoThemeZipFile Exception exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getInputStreamInner(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 162
    invoke-direct {p0, p2}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 163
    .local v5, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v5, :cond_3

    invoke-virtual {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    aget-object v4, v6, p1

    .line 165
    .local v4, "str2":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "i":I
    if-lez v1, :cond_3

    .line 168
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "str1":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 173
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 174
    .local v0, "arrayOfString":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v4, v0, v6

    .line 175
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    invoke-static {v6}, Loppo/util/OppoDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 176
    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 177
    const-string v6, "%s%s%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 180
    if-nez v5, :cond_1

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    if-le v6, v7, :cond_2

    .line 184
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    iput v6, v5, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 186
    :cond_2
    if-eqz v5, :cond_0

    .line 192
    .end local v0    # "arrayOfString":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    const-string/jumbo v0, "oppo-framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    const-string/jumbo p0, "oppo"

    .line 232
    :cond_1
    :goto_0
    return-object p0

    .line 230
    :cond_2
    const-string p0, "android"

    goto :goto_0
.end method

.method protected static declared-synchronized getThemeZipFile(Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Loppo/content/res/OppoThemeZipFile;
    .locals 11
    .param p0, "metadata"    # Loppo/content/res/OppoThemeResources$MetaData;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 112
    const-class v8, Loppo/content/res/OppoThemeZipFile;

    monitor-enter v8

    const/4 v4, 0x0

    .line 113
    .local v4, "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Loppo/content/res/OppoThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    .local v2, "packageFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 119
    const/4 v5, 0x0

    .line 124
    const/4 v2, 0x0

    .line 144
    :goto_0
    monitor-exit v8

    return-object v5

    .line 124
    :cond_0
    const/4 v2, 0x0

    .line 127
    :goto_1
    :try_start_2
    sget-object v7, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 129
    .local v6, "weakreference":Ljava/lang/ref/WeakReference;
    if-eqz v6, :cond_1

    .line 130
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Loppo/content/res/OppoThemeZipFile;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v4

    .line 135
    .end local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .local v5, "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :goto_2
    if-eqz v5, :cond_2

    move-object v4, v5

    .line 136
    .end local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    goto :goto_0

    .line 121
    .end local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThemeZipFile Exception e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    const/4 v2, 0x0

    .line 125
    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    const/4 v2, 0x0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :goto_3
    monitor-exit v8

    throw v7

    .line 132
    .restart local v2    # "packageFile":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    :cond_1
    const/4 v4, 0x0

    move-object v5, v4

    .end local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    goto :goto_2

    .line 138
    :cond_2
    :try_start_5
    new-instance v4, Loppo/content/res/OppoThemeZipFile;

    invoke-static {p1}, Loppo/content/res/OppoThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, p0, v7, p2}, Loppo/content/res/OppoThemeZipFile;-><init>(Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 140
    .end local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :try_start_6
    new-instance v6, Ljava/lang/ref/WeakReference;

    .end local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 141
    .restart local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    sget-object v7, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v4

    .line 144
    goto :goto_0

    .line 112
    .end local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    goto :goto_3
.end method

.method private getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    const/4 v4, 0x0

    .line 199
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    iget-object v5, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 201
    if-eqz v4, :cond_0

    .line 203
    :try_start_0
    iget-object v5, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 204
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 205
    new-instance v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-direct {v3, p0, v1, v6, v7}, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;-><init>(Loppo/content/res/OppoThemeZipFile;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .local v3, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_1

    move-object v2, v3

    .line 218
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v3

    .line 210
    .restart local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OppoThemeZipFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OppoThemeZipFile Exception e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_1
    move-object v3, v2

    .line 218
    .local v3, "themeFileInfo":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .local v3, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v2, v3

    .end local v3    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_1
.end method

.method private loadThemeValues(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 320
    sget-object v8, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 321
    .local v3, "i":I
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 322
    .local v5, "suffix":[Ljava/lang/Object;
    const/4 v8, 0x0

    sget-object v9, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Loppo/util/OppoDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 323
    sget-object v8, Loppo/content/res/OppoThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 325
    .local v6, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v4, 0x0

    .line 329
    .local v4, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 331
    .local v0, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v4, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 332
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 333
    .local v7, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .local v1, "bufferedinputstream":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1, v7}, Loppo/content/res/OppoThemeZipFile;->mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    if-eqz v1, :cond_2

    .line 343
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 352
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .line 356
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 345
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 357
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 337
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 338
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    if-eqz v0, :cond_4

    .line 343
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 351
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 352
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 354
    :catch_3
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 346
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 341
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 342
    :goto_4
    if-eqz v0, :cond_5

    .line 343
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 351
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 352
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 356
    :cond_6
    :goto_6
    throw v8

    .line 345
    :catch_5
    move-exception v2

    .line 346
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "OppoThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 354
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "OppoThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 341
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 337
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method private mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "xmlpullparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 361
    const/4 v7, 0x0

    .line 362
    .local v7, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 366
    .local v9, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 367
    .local v4, "eventType":I
    :goto_0
    const/4 v12, 0x1

    if-eq v4, v12, :cond_6

    .line 368
    packed-switch v4, :pswitch_data_0

    .line 454
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 372
    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "resourceType":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 377
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 378
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 379
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_3

    .line 380
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "attributeName":Ljava/lang/String;
    const-string/jumbo v12, "name"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 382
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 379
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 383
    :cond_2
    const-string/jumbo v12, "package"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 384
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 388
    .end local v1    # "attributeName":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 389
    .local v11, "resourceValue":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 391
    if-nez v7, :cond_4

    .line 392
    if-nez p1, :cond_7

    .line 393
    iget-object v7, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 401
    :cond_4
    :goto_4
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 404
    .local v8, "resourceId":I
    if-lez v8, :cond_0

    .line 408
    const-string v12, "bool"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 409
    const-string v12, "color"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "integer"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "drawable"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 412
    :cond_5
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-gez v12, :cond_0

    .line 415
    :try_start_1
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 418
    :catch_0
    move-exception v3

    .line 419
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v12, "OppoThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mergeThemeValues NumberFormatException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 456
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "eventType":I
    .end local v5    # "i":I
    .end local v8    # "resourceId":I
    .end local v10    # "resourceType":Ljava/lang/String;
    .end local v11    # "resourceValue":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 457
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "OppoThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mergeThemeValues XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_5
    return-void

    .line 394
    .restart local v2    # "count":I
    .restart local v4    # "eventType":I
    .restart local v5    # "i":I
    .restart local v10    # "resourceType":Ljava/lang/String;
    .restart local v11    # "resourceValue":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    .line 395
    :try_start_3
    const-string v7, "android"

    goto/16 :goto_4

    .line 396
    :cond_8
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 397
    const-string/jumbo v7, "oppo"

    goto/16 :goto_4

    .line 423
    .restart local v8    # "resourceId":I
    :cond_9
    const-string/jumbo v12, "string"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 424
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 426
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 460
    .end local v2    # "count":I
    .end local v4    # "eventType":I
    .end local v5    # "i":I
    .end local v8    # "resourceId":I
    .end local v10    # "resourceType":Ljava/lang/String;
    .end local v11    # "resourceValue":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 461
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "OppoThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mergeThemeValues IOException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 428
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "count":I
    .restart local v4    # "eventType":I
    .restart local v5    # "i":I
    .restart local v8    # "resourceId":I
    .restart local v10    # "resourceType":Ljava/lang/String;
    .restart local v11    # "resourceValue":Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v12, "dimen"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 430
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/app/OppoThemeHelper;->parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 432
    .local v6, "integer":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 433
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 436
    .end local v6    # "integer":Ljava/lang/Integer;
    :cond_b
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 437
    const-string/jumbo v12, "true"

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 438
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 440
    :cond_c
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openZipFile()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 297
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 298
    .local v2, "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 300
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 303
    iget-wide v4, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 305
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 317
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v8, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 311
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    iput-object v8, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 6

    .prologue
    .line 275
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 276
    .local v2, "l":J
    iget-wide v4, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 291
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 279
    .end local v0    # "flag":Z
    :cond_0
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->clean()V

    .line 280
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->openZipFile()V

    .line 282
    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "oppo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 283
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Loppo/content/res/OppoThemeZipFile;->loadThemeValues(I)V

    .line 289
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "flag":Z
    goto :goto_0

    .line 285
    .end local v0    # "flag":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Loppo/content/res/OppoThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 286
    invoke-direct {p0, v1}, Loppo/content/res/OppoThemeZipFile;->loadThemeValues(I)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "flag":Z
    invoke-virtual {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getInputStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v1, v1, Loppo/content/res/OppoThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, p1, p2}, Loppo/content/res/OppoThemeZipFile;->getInputStreamInner(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 158
    .local v0, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v0

    .line 156
    .end local v0    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Loppo/content/res/OppoThemeZipFile;->getInputStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 256
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 260
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 266
    :cond_0
    const/4 v0, 0x1

    .line 270
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 268
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResource(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 493
    iput-object p1, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 494
    return-void
.end method
