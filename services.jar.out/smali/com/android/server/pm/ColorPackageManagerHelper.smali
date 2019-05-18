.class public Lcom/android/server/pm/ColorPackageManagerHelper;
.super Ljava/lang/Object;
.source "ColorPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final COLUMN_NAME_XML:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final OPPO_DEFAULT_PACKAGE_XML:Ljava/lang/String; = "sys_pms_defaultpackage_list"

.field private static final OPPO_DEFAULT_PKG_CONFIG:Ljava/lang/String; = "/data/system/config/sys_pms_defaultpackage_list.xml"

.field private static final OPPO_DEFAULT_PKG_PATH:Ljava/lang/String; = "/data/system/config"

.field public static final OPPO_FORBID_INSTALL_ACTION:Ljava/lang/String; = "oppo.android.intent.action.FORBID_INSTALL"

.field private static final OPPO_SYSTEM_APP_PATH:Ljava/lang/String; = "/system/etc/security/pl.fs"

.field private static final OPPO_SYSTEM_APP_PWD:Ljava/lang/String; = "a"

.field private static final SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_FORCE_PACKAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ColorPackageManager"

.field private static final TAG_OPPO_DEFAULT_APP:Ljava/lang/String; = "OppoDefaultApp"

.field private static final TAG_OPPO_FORCE_APP:Ljava/lang/String; = "OppoForceApp"

.field private static mConfigFileObserver:Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;

.field private static final mOppoApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOppoDefaultPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOppoForcePkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoApkList:Ljava/util/ArrayList;

    .line 61
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoDefaultPkgList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoForcePkgList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mConfigFileObserver:Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;

    .line 74
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.oppo.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.oppo.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.oppo.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.oppo.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.coloros.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_FORCE_PACKAGES:Ljava/util/ArrayList;

    .line 83
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_FORCE_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.oppo.wirelesssettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_FORCE_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.coloros.wirelesssettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_FORCE_PACKAGES:Ljava/util/ArrayList;

    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    return-void
.end method

.method public static IsOppoApkList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static IsOppoDefaultApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoDefaultPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 93
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoDefaultPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static IsOppoForceApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoForcePkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 100
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->SYSTEM_FORCE_PACKAGES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoForcePkgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static IsRootFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v0, "su"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "superuser.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kinguser.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "libsu.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "libroot.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static OppoCheckSuApp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 19
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "ct"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v15, "debug.restrict.install"

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 152
    .local v10, "isRestict":Z
    if-nez v10, :cond_1

    .line 153
    const-string v15, "ColorPackageManager"

    const-string v16, "debug allow app install"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "appFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 158
    .local v3, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 159
    const-string v15, "ColorPackageManager"

    const-string v16, "appFile is not exist!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 163
    move-object v3, v1

    .line 173
    :cond_3
    const/4 v13, 0x0

    .line 175
    .local v13, "zin":Ljava/util/zip/ZipInputStream;
    if-nez v3, :cond_6

    .line 176
    :try_start_0
    const-string v15, "ColorPackageManager"

    const-string v16, "codeFile is null!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    if-eqz v13, :cond_0

    .line 200
    :try_start_1
    const-string v15, "ColorPackageManager"

    const-string v16, "check finish!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/IOException;
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 166
    .local v7, "files":[Ljava/io/File;
    move-object v2, v7

    .local v2, "arr$":[Ljava/io/File;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v6, v2, v9

    .line 167
    .local v6, "file":Ljava/io/File;
    invoke-static {v6}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 168
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "apk file == "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object v3, v6

    .line 166
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 179
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_6
    :try_start_2
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "code path == "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v14, Ljava/util/zip/ZipInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .local v14, "zin":Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_a

    .line 184
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "splitName":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v15, v12

    if-ge v8, v15, :cond_8

    .line 186
    aget-object v15, v12, v8

    invoke-static {v15}, Lcom/android/server/pm/ColorPackageManagerHelper;->IsRootFile(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/ColorPackageManagerHelper;->ShowMessageToUSer(Landroid/content/Context;)V

    .line 188
    const-string v15, "ColorPackageManager"

    const-string v16, "This dangerous app!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v15, Lcom/android/server/pm/PackageManagerException;

    const/16 v16, -0x2

    const-string v17, "This dangerous app, forbid it"

    invoke-direct/range {v15 .. v17}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "i":I
    .end local v12    # "splitName":[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v13, v14

    .line 196
    .end local v14    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_4
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    if-eqz v13, :cond_0

    .line 200
    :try_start_5
    const-string v15, "ColorPackageManager"

    const-string v16, "check finish!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 202
    :catch_2
    move-exception v4

    .line 204
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "i":I
    .restart local v12    # "splitName":[Ljava/lang/String;
    .restart local v14    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 193
    :cond_8
    :try_start_6
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 198
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "i":I
    .end local v12    # "splitName":[Ljava/lang/String;
    :catchall_0
    move-exception v15

    move-object v13, v14

    .end local v14    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_5
    if-eqz v13, :cond_9

    .line 200
    :try_start_7
    const-string v16, "ColorPackageManager"

    const-string v17, "check finish!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 205
    :cond_9
    :goto_6
    throw v15

    .line 198
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_a
    if-eqz v14, :cond_b

    .line 200
    :try_start_8
    const-string v15, "ColorPackageManager"

    const-string v16, "check finish!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v13, v14

    .line 205
    .end local v14    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 202
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v4

    .line 204
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v14

    .line 205
    .end local v14    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 202
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v4

    .line 204
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v16, "ColorPackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 198
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    goto :goto_5

    .line 195
    :catch_5
    move-exception v4

    goto/16 :goto_4

    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_b
    move-object v13, v14

    .end local v14    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0
.end method

.method public static ReadEncryptFile()I
    .locals 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 106
    const/4 v3, 0x0

    .line 108
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v13, "ColorPackageManager"

    const-string v14, "ReadEncryptFile!!!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v9, Ljava/io/File;

    const-string v13, "/system/etc/security/pl.fs"

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v9, "path":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_1

    .line 138
    if-eqz v3, :cond_0

    .line 139
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .end local v9    # "path":Ljava/io/File;
    :cond_0
    :goto_0
    return v11

    .line 141
    .restart local v9    # "path":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v7, v14

    .line 114
    .local v7, "len":I
    new-array v1, v7, [B

    .line 115
    .local v1, "buf":[B
    const-string v13, "a"

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 117
    .local v0, "b":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 119
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 120
    aget-byte v13, v1, v5

    const/4 v14, 0x0

    aget-byte v14, v0, v14

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v1, v5

    .line 121
    aget-byte v13, v1, v5

    xor-int/lit8 v13, v13, -0x1

    int-to-byte v13, v13

    aput-byte v13, v1, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 123
    :cond_2
    new-instance v10, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v10, v1, v13, v7}, Ljava/lang/String;-><init>([BII)V

    .line 124
    .local v10, "pkg":Ljava/lang/String;
    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "line":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    array-length v13, v8

    if-ge v6, v13, :cond_3

    .line 127
    sget-object v13, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoApkList:Ljava/util/ArrayList;

    aget-object v14, v8, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 138
    :cond_3
    if-eqz v4, :cond_4

    .line 139
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move v11, v12

    .line 146
    goto :goto_0

    .line 141
    :catch_1
    move-exception v2

    .line 143
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 130
    .end local v0    # "b":[B
    .end local v1    # "buf":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "len":I
    .end local v8    # "line":[Ljava/lang/String;
    .end local v9    # "path":Ljava/io/File;
    .end local v10    # "pkg":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    if-eqz v3, :cond_0

    .line 139
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 141
    :catch_3
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 134
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    if-eqz v3, :cond_0

    .line 139
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 141
    :catch_5
    move-exception v2

    .line 143
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 138
    :goto_6
    if-eqz v3, :cond_5

    .line 139
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 144
    :cond_5
    :goto_7
    throw v11

    .line 141
    :catch_6
    move-exception v2

    .line 143
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "buf":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    .restart local v9    # "path":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 133
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 130
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private static ShowMessageToUSer(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.android.intent.action.FORBID_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/android/server/pm/ColorPackageManagerHelper;->readConfigFile()V

    return-void
.end method

.method public static getAvaiDataSize()I
    .locals 10

    .prologue
    .line 420
    new-instance v3, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v3, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 421
    .local v3, "sf":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 422
    .local v0, "avaiBlockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 423
    .local v6, "blockCount":J
    mul-long v4, v6, v0

    .line 424
    .local v4, "availSize":J
    const-wide/32 v8, 0x100000

    div-long v8, v4, v8

    long-to-int v2, v8

    .line 425
    .local v2, "availDateSize":I
    return v2
.end method

.method private static getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 224
    const/4 v6, 0x0

    .line 225
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 227
    .local v9, "xmlValue":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "xml"

    aput-object v1, v2, v0

    .line 229
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/ColorPackageManagerHelper;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filtername=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    const-string v0, "xml"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 234
    .local v8, "xmlColumnIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 235
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    .end local v8    # "xmlColumnIndex":I
    :goto_0
    if-eqz v6, :cond_0

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v6, 0x0

    :cond_0
    move-object v0, v9

    .line 252
    :goto_1
    return-object v0

    .line 237
    :cond_1
    const-string v0, "ColorPackageManager"

    const-string v1, "The Filtrate app cursor is null !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v7

    .line 247
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    const/4 v6, 0x0

    .line 251
    :cond_2
    const-string v0, "ColorPackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get Filtrate app data from provider,because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 252
    goto :goto_1
.end method

.method private static initDir()V
    .locals 5

    .prologue
    .line 379
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/config"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "defaultAppFilePath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/config/sys_pms_defaultpackage_list.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "defaultAppConfigPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 386
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ColorPackageManager"

    const-string v4, "init defaultAppConfigPath Dir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static initFileObserver()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;

    const-string v1, "/data/system/config/sys_pms_defaultpackage_list.xml"

    invoke-direct {v0, v1}, Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mConfigFileObserver:Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;

    .line 396
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mConfigFileObserver:Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;->startWatching()V

    .line 397
    return-void
.end method

.method public static oppoReadDefaultPkg(Landroid/content/Context;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-static {}, Lcom/android/server/pm/ColorPackageManagerHelper;->initDir()V

    .line 261
    invoke-static {}, Lcom/android/server/pm/ColorPackageManagerHelper;->initFileObserver()V

    .line 262
    invoke-static {}, Lcom/android/server/pm/ColorPackageManagerHelper;->readConfigFile()V

    .line 263
    return-void
.end method

.method private static parseXmlValue(Ljava/lang/String;)Z
    .locals 10
    .param p0, "xmlValue"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 331
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 332
    :cond_0
    const-string v6, "ColorPackageManager"

    const-string v8, "xmlValue is null !!!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 375
    :cond_1
    :goto_0
    return v6

    .line 336
    :cond_2
    const/4 v0, 0x0

    .line 339
    .local v0, "bSuccess":Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 340
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 341
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 345
    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 346
    .local v4, "type":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 347
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "tag":Ljava/lang/String;
    const-string v8, "OppoDefaultApp"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 349
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 351
    sget-object v8, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoDefaultPkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    if-ne v4, v6, :cond_3

    .line 361
    const/4 v0, 0x1

    .line 372
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :goto_2
    if-nez v0, :cond_1

    move v6, v7

    .line 375
    goto :goto_0

    .line 353
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_5
    const-string v8, "OppoForceApp"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 354
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 355
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 356
    sget-object v8, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoForcePkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 362
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v8, "ColorPackageManager"

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 370
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    throw v6

    .line 364
    :catch_1
    move-exception v1

    .line 365
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v8, "ColorPackageManager"

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 366
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "ColorPackageManager"

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "ColorPackageManager"

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static readConfigFile()V
    .locals 11

    .prologue
    .line 268
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/config/sys_pms_defaultpackage_list.xml"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v6, 0x0

    .line 274
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 277
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 280
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v7, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 288
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 289
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_8

    .line 290
    packed-switch v1, :pswitch_data_0

    .line 311
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    .line 281
    .end local v1    # "eventType":I
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "ColorPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find or open sys_pms_defaultpackage_list file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    if-eqz v6, :cond_3

    .line 319
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 321
    :cond_3
    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "ColorPackageManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OppoDefaultApp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 295
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 297
    const-string v8, "ColorPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_OPPO_DEFAULT_APP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v8, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoDefaultPkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 314
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 315
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    const-string v8, "ColorPackageManager"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 318
    if-eqz v6, :cond_4

    .line 319
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 321
    :cond_4
    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 324
    :catch_3
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "ColorPackageManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 300
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_5
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OppoForceApp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 301
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 302
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 303
    const-string v8, "ColorPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_OPPO_FORCE_APP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v8, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoForcePkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 317
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .line 318
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_4
    if-eqz v6, :cond_6

    .line 319
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 321
    :cond_6
    if-eqz v3, :cond_7

    .line 322
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 326
    :cond_7
    :goto_5
    throw v8

    .line 318
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_8
    if-eqz v7, :cond_9

    .line 319
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 321
    :cond_9
    if-eqz v3, :cond_a

    .line 322
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_a
    move-object v6, v7

    .line 326
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 324
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_4
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "ColorPackageManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 327
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "ColorPackageManager"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 317
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_4

    .line 314
    :catch_6
    move-exception v0

    goto :goto_3

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
