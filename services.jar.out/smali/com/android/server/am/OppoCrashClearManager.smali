.class public Lcom/android/server/am/OppoCrashClearManager;
.super Ljava/lang/Object;
.source "OppoCrashClearManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;,
        Lcom/android/server/am/OppoCrashClearManager$ClearHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_MAP_TIME:J = 0x927c0L

.field public static final CLEAR_TIME:Ljava/lang/String; = "c"

.field public static final CRASH_CLEAR_NAME:Ljava/lang/String; = "p"

.field private static final CRASH_CLEAR_TIMEOUT:J = 0x1b7740L

.field public static final CRASH_CONUNT:I = 0x3

.field public static final CRASH_COUNT:Ljava/lang/String; = "n"

.field public static final CRASH_TIMEOUT:Ljava/lang/String; = "o"

.field private static final DATA_CLEAR_MESSAGE:I = 0x1

.field public static final FEATURE:Ljava/lang/String; = "f"

.field private static final OPPO_CRASH_CLEAR_CONFIG_PATH:Ljava/lang/String; = "/data/system/config/crashclear_white_list.xml"

.field private static final OPPO_CRASH_CLEAR_PATH:Ljava/lang/String; = "/data/system/config"

.field private static final TAG:Ljava/lang/String; = "OppoCrashClearManager"

.field private static mOppoCrashCleanManager:Lcom/android/server/am/OppoCrashClearManager;


# instance fields
.field private isReady:Z

.field private mClearConfigFileObserver:Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;

.field private mClearTime:J

.field private mContext:Landroid/content/Context;

.field private mCrashClearTimeout:J

.field public mCrashCount:I

.field private mFeature:Z

.field private mHandler:Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastClearMapTime:J

.field private final mObjectLock:Ljava/lang/Object;

.field public final mProcessCrashCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OppoAppStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipClearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skipCrashApp:Ljava/util/List;
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
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoCrashClearManager;->mOppoCrashCleanManager:Lcom/android/server/am/OppoCrashClearManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mClearConfigFileObserver:Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;

    .line 67
    iput v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashCount:I

    .line 71
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashClearTimeout:J

    .line 75
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mClearTime:J

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    .line 78
    iput-boolean v3, p0, Lcom/android/server/am/OppoCrashClearManager;->mFeature:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/server/am/OppoCrashClearManager;->isReady:Z

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mObjectLock:Ljava/lang/Object;

    .line 489
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v2

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.android.mms.service"

    aput-object v2, v0, v1

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "com.android.providers.telephony"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.providers.contacts"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->skipCrashApp:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Lcom/android/server/am/OppoCrashClearManager;->initDir()V

    .line 105
    invoke-direct {p0}, Lcom/android/server/am/OppoCrashClearManager;->initFileObserver()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/am/OppoCrashClearManager;->readConfigFile()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoCrashClearManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoCrashClearManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoCrashClearManager;->dataClearAlert(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoCrashClearManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoCrashClearManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/am/OppoCrashClearManager;->readConfigFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoCrashClearManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoCrashClearManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoCrashClearManager;->clearData(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method private clearData(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 450
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoCrashClearManager;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 458
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const-string v2, "OppoCrashClearManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearApplicationUserData more than 3 times app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 460
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoCrashClearManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception has crashed too many "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private dataClearAlert(Lcom/android/server/am/ProcessRecord;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const v9, 0xc04055e

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 416
    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    move-object v3, p1

    .line 420
    .local v3, "tmpApp":Lcom/android/server/am/ProcessRecord;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc04055d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 423
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "name":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 425
    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 434
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc04055f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/OppoCrashClearManager$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/am/OppoCrashClearManager$1;-><init>(Lcom/android/server/am/OppoCrashClearManager;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    const v4, 0xc040560

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 444
    .local v1, "dataClearAlert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 445
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 446
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 429
    .end local v1    # "dataClearAlert":Landroid/app/AlertDialog;
    .end local v2    # "name":Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 430
    .restart local v2    # "name":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static final getInstance()Lcom/android/server/am/OppoCrashClearManager;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/server/am/OppoCrashClearManager;->mOppoCrashCleanManager:Lcom/android/server/am/OppoCrashClearManager;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/server/am/OppoCrashClearManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoCrashClearManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoCrashClearManager;->mOppoCrashCleanManager:Lcom/android/server/am/OppoCrashClearManager;

    .line 138
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoCrashClearManager;->mOppoCrashCleanManager:Lcom/android/server/am/OppoCrashClearManager;

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 111
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/config"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "crashClearFilePath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/config/crashclear_white_list.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "crashClearConfigPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "OppoCrashClearManager"

    const-string v4, "init crashClearConfigPath Dir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;

    const-string v1, "/data/system/config/crashclear_white_list.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoCrashClearManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mClearConfigFileObserver:Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;

    .line 143
    iget-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mClearConfigFileObserver:Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;->startWatching()V

    .line 144
    return-void
.end method

.method private isHomeProcess(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 475
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v3

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OppoCrashClearManager;->queryHomeResolveInfo()Ljava/util/List;

    move-result-object v1

    .line 479
    .local v1, "mHomeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 480
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 481
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private queryHomeResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 467
    .local v0, "mHomeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v2, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 471
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method private readConfigFile()V
    .locals 11

    .prologue
    .line 166
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/config/crashclear_white_list.xml"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->skipCrashApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v6, 0x0

    .line 173
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 176
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    .line 177
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 180
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v7, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 188
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 189
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_e

    .line 190
    packed-switch v1, :pswitch_data_0

    .line 219
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    .line 181
    .end local v1    # "eventType":I
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "OppoCrashClearManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    :try_start_4
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 228
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->skipCrashApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    .line 231
    :cond_3
    if-eqz v6, :cond_4

    .line 232
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 234
    :cond_4
    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoCrashClearManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "p"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 195
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 196
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoCrashClearManager;->updateCrashClearName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 222
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 223
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    const-string v8, "OppoCrashClearManager"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    :try_start_7
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 228
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->skipCrashApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    .line 231
    :cond_5
    if-eqz v6, :cond_6

    .line 232
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 234
    :cond_6
    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 237
    :catch_3
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoCrashClearManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_7
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 199
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 200
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoCrashClearManager;->updateCrashCount(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 225
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .line 227
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_4
    :try_start_9
    iget-object v9, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 228
    iget-object v9, p0, Lcom/android/server/am/OppoCrashClearManager;->skipCrashApp:Ljava/util/List;

    iput-object v9, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    .line 231
    :cond_8
    if-eqz v6, :cond_9

    .line 232
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 234
    :cond_9
    if-eqz v3, :cond_a

    .line 235
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 239
    :cond_a
    :goto_5
    throw v8

    .line 202
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_b
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "o"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 203
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 204
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoCrashClearManager;->updateCrashTimeout(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 206
    .end local v4    # "value":Ljava/lang/String;
    :cond_c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 207
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 208
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoCrashClearManager;->updateFeature(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 210
    .end local v4    # "value":Ljava/lang/String;
    :cond_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 211
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 212
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoCrashClearManager;->updateClearTime(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 227
    .end local v4    # "value":Ljava/lang/String;
    :cond_e
    :try_start_b
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 228
    iget-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->skipCrashApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    .line 231
    :cond_f
    if-eqz v7, :cond_10

    .line 232
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 234
    :cond_10
    if-eqz v3, :cond_11

    .line 235
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_11
    move-object v6, v7

    .line 239
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 237
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_4
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OppoCrashClearManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 240
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "OppoCrashClearManager"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto/16 :goto_4

    .line 222
    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected clearAppUserData(Lcom/android/server/am/ProcessRecord;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 361
    iget-boolean v6, p0, Lcom/android/server/am/OppoCrashClearManager;->mFeature:Z

    if-nez v6, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/server/coloros/OppoSysStateManager;->getInstance()Lcom/android/server/coloros/OppoSysStateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/coloros/OppoSysStateManager;->isScreenOff()Z

    move-result v6

    if-nez v6, :cond_0

    .line 369
    if-eqz p1, :cond_0

    .line 373
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->isANR:Z

    if-nez v6, :cond_4

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 375
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OppoAppStartInfo;

    .line 376
    .local v1, "crashCountInfo":Lcom/android/server/am/OppoAppStartInfo;
    if-eqz v1, :cond_4

    .line 377
    iget-object v6, v1, Lcom/android/server/am/OppoAppStartInfo;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/OppoCrashClearManager;->isHomeProcess(Ljava/lang/String;)Z

    move-result v2

    .line 378
    .local v2, "isFromHome":Z
    if-eqz v2, :cond_4

    .line 379
    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartInfo;->getCrashCount()I

    move-result v0

    .line 380
    .local v0, "crashCount":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/am/OppoAppStartInfo;->setCrashCount(I)V

    .line 381
    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartInfo;->getCrashCount()I

    move-result v6

    iget v7, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashCount:I

    if-lt v6, v7, :cond_3

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "visb":Z
    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartInfo;->getFirstStartTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 384
    const/4 v3, 0x1

    .line 389
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoCrashClearManager;->sendDataClear(Lcom/android/server/am/ProcessRecord;)V

    .line 393
    .end local v3    # "visb":Z
    :cond_3
    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/OppoAppStartInfo;->setFirstStartTime(J)V

    .line 398
    .end local v0    # "crashCount":I
    .end local v1    # "crashCountInfo":Lcom/android/server/am/OppoAppStartInfo;
    .end local v2    # "isFromHome":Z
    .end local v4    # "now":J
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->isANR:Z

    goto :goto_0

    .line 385
    .restart local v0    # "crashCount":I
    .restart local v1    # "crashCountInfo":Lcom/android/server/am/OppoAppStartInfo;
    .restart local v2    # "isFromHome":Z
    .restart local v3    # "visb":Z
    .restart local v4    # "now":J
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartInfo;->getFirstStartTime()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 386
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected collectCrashInfo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;)V
    .locals 18
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mFeature:Z

    if-nez v12, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    if-eqz p3, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/OppoCrashClearManager;->isReady:Z

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/server/coloros/OppoSysStateManager;->getInstance()Lcom/android/server/coloros/OppoSysStateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/coloros/OppoSysStateManager;->isScreenOff()Z

    move-result v12

    if-nez v12, :cond_0

    .line 306
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_0

    .line 310
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/server/am/OppoAbnormalAppManager;->inRestrictAppList(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 315
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_7

    const/4 v5, 0x1

    .line 316
    .local v5, "isSystemApp":Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 317
    .local v8, "startTime":J
    if-nez v5, :cond_3

    const-string v12, "activity"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 318
    :cond_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    .line 319
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    .line 321
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoCrashClearManager;->mObjectLock:Ljava/lang/Object;

    monitor-enter v13

    .line 322
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OppoCrashClearManager;->mCrashClearTimeout:J

    move-wide/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v14, v14, v16

    cmp-long v12, v8, v14

    if-lez v12, :cond_6

    .line 324
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 325
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 326
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 327
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OppoAppStartInfo;

    .line 328
    .local v4, "info":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v4}, Lcom/android/server/am/OppoAppStartInfo;->getFirstStartTime()J

    move-result-wide v10

    .line 329
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/OppoCrashClearManager;->mClearTime:J

    add-long/2addr v14, v10

    cmp-long v12, v8, v14

    if-lez v12, :cond_5

    .line 330
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 333
    .end local v4    # "info":Lcom/android/server/am/OppoAppStartInfo;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v10    # "time":J
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v12, "OppoCrashClearManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "collectCrashInfo Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    const-wide/16 v14, -0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    .line 340
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OppoAppStartInfo;

    .line 341
    .local v2, "crashInfo":Lcom/android/server/am/OppoAppStartInfo;
    if-nez v2, :cond_9

    .line 342
    new-instance v2, Lcom/android/server/am/OppoAppStartInfo;

    .end local v2    # "crashInfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-direct {v2}, Lcom/android/server/am/OppoAppStartInfo;-><init>()V

    .line 343
    .restart local v2    # "crashInfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v2, v8, v9}, Lcom/android/server/am/OppoAppStartInfo;->setFirstStartTime(J)V

    .line 344
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/server/am/OppoAppStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/server/am/OppoAppStartInfo;->mLaunchedFromPackage:Ljava/lang/String;

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OppoCrashClearManager;->mProcessCrashCount:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :goto_4
    monitor-exit v13

    goto/16 :goto_0

    .end local v2    # "crashInfo":Lcom/android/server/am/OppoAppStartInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v12

    .line 315
    .end local v5    # "isSystemApp":Z
    .end local v8    # "startTime":J
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 336
    .restart local v5    # "isSystemApp":Z
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "startTime":J
    :cond_8
    const-wide/16 v14, -0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    goto :goto_3

    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_1
    move-exception v12

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/OppoCrashClearManager;->mLastClearMapTime:J

    throw v12

    .line 348
    .restart local v2    # "crashInfo":Lcom/android/server/am/OppoAppStartInfo;
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartInfo;->getFirstStartTime()J

    move-result-wide v10

    .line 350
    .restart local v10    # "time":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/OppoCrashClearManager;->mClearTime:J

    add-long/2addr v14, v10

    cmp-long v12, v8, v14

    if-lez v12, :cond_a

    .line 351
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/server/am/OppoAppStartInfo;->setCrashCount(I)V

    .line 353
    :cond_a
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/server/am/OppoAppStartInfo;->mLaunchedFromPackage:Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v8, v9}, Lcom/android/server/am/OppoAppStartInfo;->setFirstStartTime(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoCrashClearManager;->isReady:Z

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "oppocrashclear"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    iget-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v0, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;-><init>(Lcom/android/server/am/OppoCrashClearManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandler:Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

    .line 132
    return-void
.end method

.method sendDataClear(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x1

    .line 402
    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandler:Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 403
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandler:Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;->removeMessages(I)V

    .line 407
    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandler:Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, "mg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mHandler:Lcom/android/server/am/OppoCrashClearManager$ClearHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 411
    .end local v0    # "mg":Landroid/os/Message;
    :cond_1
    const-string v1, "OppoCrashClearManager"

    const-string v2, "ClearHandler: mHandler is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateClearTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "clearTime"    # Ljava/lang/String;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/OppoCrashClearManager;->mClearTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/am/OppoCrashClearManager;->mClearTime:J

    .line 289
    const-string v1, "OppoCrashClearManager"

    const-string v2, "updateClearTime NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCrashClearName(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/am/OppoCrashClearManager;->mSkipClearList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public updateCrashCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "crashCount"    # Ljava/lang/String;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashCount:I

    .line 256
    const-string v1, "OppoCrashClearManager"

    const-string v2, "updateCrashCount NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCrashTimeout(Ljava/lang/String;)V
    .locals 4
    .param p1, "crashTimeout"    # Ljava/lang/String;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashClearTimeout:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lcom/android/server/am/OppoCrashClearManager;->mCrashClearTimeout:J

    .line 267
    const-string v1, "OppoCrashClearManager"

    const-string v2, "updateCrashTimeout NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mFeature:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OppoCrashClearManager;->mFeature:Z

    .line 278
    const-string v1, "OppoCrashClearManager"

    const-string v2, "updateFeature NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
