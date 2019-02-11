.class public Lcom/color/sau/SauCheckUpdateHelper;
.super Ljava/lang/Object;
.source "SauCheckUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;
    }
.end annotation


# static fields
.field private static final DATABASE_NEWEST_VERSION_PROJECTION:[Ljava/lang/String;

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SauJar"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 16
    sput-boolean v3, Lcom/color/sau/SauCheckUpdateHelper;->DEBUG:Z

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "pkg_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "new_version_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "can_use_old"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "md5_patch"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "md5_all"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "all_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "old_file_dir"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "download_finished"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "patch_finished"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "install_finished"

    aput-object v2, v0, v1

    sput-object v0, Lcom/color/sau/SauCheckUpdateHelper;->DATABASE_NEWEST_VERSION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/color/sau/SauCheckUpdateHelper;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/color/sau/SauCheckUpdateHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauCheckUpdateHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/color/sau/SauCheckUpdateHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/color/sau/SauCheckUpdateHelper;Landroid/content/Context;Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauCheckUpdateHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/color/sau/SauCheckUpdateHelper;->getUpdateInfoFromDB(Landroid/content/Context;Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/sau/SauCheckUpdateHelper;Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauCheckUpdateHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/color/sau/SauPkgUpdateInfo;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/color/sau/SauCheckUpdateHelper;->createUpdateAlertDialog(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/color/sau/SauCheckUpdateHelper;->DEBUG:Z

    return v0
.end method

.method private createAlertDialog(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgInfo"    # Lcom/color/sau/SauPkgUpdateInfo;

    .prologue
    .line 102
    new-instance v0, Lcom/color/sau/SauAlertManager;

    invoke-direct {v0}, Lcom/color/sau/SauAlertManager;-><init>()V

    .line 103
    .local v0, "alm":Lcom/color/sau/SauAlertManager;
    invoke-virtual {v0, p1, p2}, Lcom/color/sau/SauAlertManager;->init(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)V

    .line 104
    invoke-virtual {v0}, Lcom/color/sau/SauAlertManager;->createAlertDialog()I

    .line 105
    return-void
.end method

.method private createUpdateAlertDialog(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgInfo"    # Lcom/color/sau/SauPkgUpdateInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-nez p2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    iget v0, p2, Lcom/color/sau/SauPkgUpdateInfo;->mCanUseOld:I

    .line 88
    .local v0, "isEmergencyVersion":I
    if-nez v0, :cond_3

    .line 89
    sget-boolean v1, Lcom/color/sau/SauCheckUpdateHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SauJar"

    const-string v3, "force update, create alert dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/color/sau/SauCheckUpdateHelper;->createAlertDialog(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)V

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    sget-boolean v3, Lcom/color/sau/SauCheckUpdateHelper;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SauJar"

    const-string v4, "not force update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    iget-object v3, p2, Lcom/color/sau/SauPkgUpdateInfo;->mPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/color/sau/SauCheckUpdateHelper;->isSendUpdateInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/color/sau/SauCheckUpdateHelper;->createAlertDialog(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)V

    move v1, v2

    .line 98
    goto :goto_0
.end method

.method private getUpdateInfoFromDB(Landroid/content/Context;Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 44
    :cond_0
    sget-boolean v1, Lcom/color/sau/SauCheckUpdateHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SauJar"

    const-string v2, "Parameter is null, please check!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v7, v4

    .line 79
    :cond_2
    :goto_0
    return-object v7

    .line 48
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg_name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/color/sau/SAUDb$UpdateInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/color/sau/SauCheckUpdateHelper;->DATABASE_NEWEST_VERSION_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 55
    .local v7, "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    new-instance v8, Lcom/color/sau/SauPkgUpdateInfo;

    invoke-direct {v8}, Lcom/color/sau/SauPkgUpdateInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v7    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    .local v8, "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mPkg:Ljava/lang/String;

    .line 58
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mType:I

    .line 59
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mNewVerName:Ljava/lang/String;

    .line 60
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mDescription:Ljava/lang/String;

    .line 61
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mCanUseOld:I

    .line 62
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mMd5Patch:Ljava/lang/String;

    .line 63
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mMd5All:Ljava/lang/String;

    .line 64
    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mUrl:Ljava/lang/String;

    .line 65
    const/16 v1, 0x9

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mPatchSize:I

    .line 66
    const/16 v1, 0xa

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mAllSize:I

    .line 67
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mFileName:Ljava/lang/String;

    .line 68
    const/16 v1, 0xc

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mOldFileName:Ljava/lang/String;

    .line 69
    const/16 v1, 0xd

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mDownloadFinished:I

    .line 70
    const/16 v1, 0xe

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mPatchFinished:I

    .line 71
    const/16 v1, 0xf

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/color/sau/SauPkgUpdateInfo;->mInstallFinished:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 76
    .end local v8    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    .restart local v7    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    :goto_1
    if-eqz v6, :cond_2

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 73
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v6, :cond_5

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 76
    .end local v7    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    .restart local v8    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    .restart local v7    # "pkgInfo":Lcom/color/sau/SauPkgUpdateInfo;
    goto :goto_2
.end method

.method private isSendUpdateInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 109
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, "launchTime":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    rem-int/lit8 v5, v1, 0x3

    if-nez v5, :cond_0

    .line 112
    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    :goto_0
    return v3

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 117
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v4

    .line 119
    goto :goto_0
.end method


# virtual methods
.method public SauCheckUpdate()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;

    invoke-direct {v0, p0}, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;-><init>(Lcom/color/sau/SauCheckUpdateHelper;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SAU"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method

.method public SupportSauUpdate()Z
    .locals 5

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/color/sau/SauCheckUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.coloros.sau"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    if-nez v0, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 152
    :goto_1
    return v2

    .line 145
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method
