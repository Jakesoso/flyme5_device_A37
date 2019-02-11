.class Lcom/android/server/oppo/OppoGrThread;
.super Ljava/lang/Object;
.source "OppoGrThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;,
        Lcom/android/server/oppo/OppoGrThread$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private DEBUG_GR:Ljava/lang/Boolean;

.field private final TAG:Ljava/lang/String;

.field private abandon:Ljava/lang/Boolean;

.field private action:Ljava/lang/Integer;

.field private appName:Ljava/lang/String;

.field private basePathCode:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field private context:Landroid/content/Context;

.field private exceptionApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionContent:Ljava/lang/String;

.field private exceptionMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private fos:Ljava/io/FileOutputStream;

.field private grAbandon:Ljava/lang/String;

.field private grFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private grOk:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private maxProgress:Ljava/lang/Integer;

.field private needBeDeletes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;

.field private pm:Landroid/content/pm/PackageManager;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rootDirFile:Ljava/io/File;

.field private tipContent:Ljava/lang/String;

.field private tipTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePathCode"    # Ljava/lang/String;
    .param p3, "tipTitle"    # Ljava/lang/String;
    .param p4, "tipContent"    # Ljava/lang/String;
    .param p5, "grAbandon"    # Ljava/lang/String;
    .param p6, "grOk"    # Ljava/lang/String;
    .param p7, "exceptionContent"    # Ljava/lang/String;
    .param p8, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "OppoGrThread"

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->TAG:Ljava/lang/String;

    .line 80
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    .line 94
    iput-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    .line 95
    iput-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    .line 97
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    .line 101
    new-instance v0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;-><init>(Lcom/android/server/oppo/OppoGrThread;Lcom/android/server/oppo/OppoGrThread$1;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->observer:Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->abandon:Ljava/lang/Boolean;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->needBeDeletes:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->grFiles:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Landroid/os/OppoManager;->GR_APK_NUMBER:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 129
    iput-object p1, p0, Lcom/android/server/oppo/OppoGrThread;->context:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/server/oppo/OppoGrThread;->basePathCode:Ljava/lang/String;

    .line 131
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;

    .line 132
    iput-object p3, p0, Lcom/android/server/oppo/OppoGrThread;->tipTitle:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcom/android/server/oppo/OppoGrThread;->tipContent:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lcom/android/server/oppo/OppoGrThread;->grAbandon:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Lcom/android/server/oppo/OppoGrThread;->grOk:Ljava/lang/String;

    .line 136
    iput-object p7, p0, Lcom/android/server/oppo/OppoGrThread;->exceptionContent:Ljava/lang/String;

    .line 137
    iput-object p8, p0, Lcom/android/server/oppo/OppoGrThread;->appName:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "OppoGrThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geloin: we will reinstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    .line 144
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/android/server/oppo/OppoGrThread;->openDialog(Ljava/lang/Integer;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "basePathCode"    # Ljava/lang/String;
    .param p4, "tipTitle"    # Ljava/lang/String;
    .param p5, "tipContent"    # Ljava/lang/String;
    .param p7, "grAbandon"    # Ljava/lang/String;
    .param p8, "grOk"    # Ljava/lang/String;
    .param p9, "exceptionContent"    # Ljava/lang/String;
    .param p10, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "exceptionMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "OppoGrThread"

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->TAG:Ljava/lang/String;

    .line 80
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    .line 94
    iput-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    .line 95
    iput-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    .line 97
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    .line 101
    new-instance v0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;-><init>(Lcom/android/server/oppo/OppoGrThread;Lcom/android/server/oppo/OppoGrThread$1;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->observer:Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->abandon:Ljava/lang/Boolean;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->needBeDeletes:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->grFiles:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Landroid/os/OppoManager;->GR_APK_NUMBER:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 151
    iput-object p1, p0, Lcom/android/server/oppo/OppoGrThread;->fileName:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/android/server/oppo/OppoGrThread;->context:Landroid/content/Context;

    .line 153
    iput-object p3, p0, Lcom/android/server/oppo/OppoGrThread;->basePathCode:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/android/server/oppo/OppoGrThread;->tipTitle:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lcom/android/server/oppo/OppoGrThread;->tipContent:Ljava/lang/String;

    .line 156
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;

    .line 157
    iput-object p7, p0, Lcom/android/server/oppo/OppoGrThread;->grAbandon:Ljava/lang/String;

    .line 158
    iput-object p8, p0, Lcom/android/server/oppo/OppoGrThread;->grOk:Ljava/lang/String;

    .line 159
    iput-object p9, p0, Lcom/android/server/oppo/OppoGrThread;->exceptionContent:Ljava/lang/String;

    .line 160
    iput-object p6, p0, Lcom/android/server/oppo/OppoGrThread;->exceptionMaps:Ljava/util/Map;

    .line 161
    iput-object p10, p0, Lcom/android/server/oppo/OppoGrThread;->appName:Ljava/lang/String;

    .line 162
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->abandon:Ljava/lang/Boolean;

    .line 165
    const/16 v0, 0x96

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/oppo/OppoGrThread;->openDialog(Ljava/lang/Integer;)V

    .line 166
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/oppo/OppoGrThread;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoGrThread;->installApk(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/oppo/OppoGrThread;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/oppo/OppoGrThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/oppo/OppoGrThread;->abandon:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/oppo/OppoGrThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/oppo/OppoGrThread;->deleteTmpFiles()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoGrThread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "exceptionType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->abandon:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    .line 176
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    .line 177
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/android/server/oppo/OppoGrThread;->deleteTmpFiles()V

    .line 184
    const-string v0, "DO_GR_SHOW_EXCEPTION"

    invoke-static {v2, v2, p2, v0}, Landroid/os/OppoManager;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteTmpFiles()V
    .locals 5

    .prologue
    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 443
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 444
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const-string v3, "OppoGrThread"

    const-string v4, "Close All connect."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->needBeDeletes:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->needBeDeletes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 455
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 447
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    const-string v3, "OppoGrThread"

    const-string v4, "Close All connect."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private downloadGR()V
    .locals 24

    .prologue
    .line 191
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->exceptionMaps:Ljava/util/Map;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 192
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->exceptionMaps:Ljava/util/Map;

    .line 195
    :cond_0
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->exceptionMaps:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 197
    .local v6, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 198
    .local v16, "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 199
    .local v15, "path":Ljava/lang/String;
    sget-object v21, Landroid/os/OppoManager;->grList:Ljava/util/List;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "/data/app"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 298
    .end local v6    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 299
    .local v5, "e":Ljava/lang/Exception;
    const/16 v21, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 312
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 204
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->pm:Landroid/content/pm/PackageManager;

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oppo/OppoGrThread;->uninstallGrs()V

    .line 207
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    sput-object v21, Landroid/os/OppoManager;->queue:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    const/4 v9, 0x0

    .line 211
    .local v9, "fileLength":Ljava/lang/Integer;
    :try_start_4
    new-instance v18, Ljava/net/URL;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/os/OppoManager;->DOWN_URL:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    check-cast v21, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 218
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x2800

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 219
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Zip file must greater than 10240"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v22, "NetworkError"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 306
    :catch_1
    move-exception v5

    .line 307
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 308
    const-string v21, "OppoGrThread"

    const-string v22, "Close All connect."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 214
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v18    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 215
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v21, "NetworkError"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 306
    :catch_3
    move-exception v5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 308
    const-string v21, "OppoGrThread"

    const-string v22, "Close All connect."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 222
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_4
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sget-object v22, Landroid/os/OppoManager;->SEPERATE_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    rem-int v21, v21, v22

    if-eqz v21, :cond_7

    .line 223
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sget-object v22, Landroid/os/OppoManager;->SEPERATE_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    div-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    .line 229
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sget-object v22, Landroid/os/OppoManager;->GR_APK_NUMBER:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    add-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    .line 235
    const-string v17, "/data/system"

    .line 236
    .local v17, "rootDir":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->rootDirFile:Ljava/io/File;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->rootDirFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->rootDirFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 241
    .local v20, "zipFilePath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v19, "zipFile":Ljava/io/File;
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    .line 245
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 246
    .local v3, "buf":[B
    const/4 v14, 0x0

    .line 247
    .local v14, "nbytes":I
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 248
    .local v13, "length":Ljava/lang/Integer;
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v4

    .line 250
    .local v4, "count":Ljava/lang/Integer;
    :cond_6
    :goto_3
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 252
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 253
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sget-object v22, Landroid/os/OppoManager;->SEPERATE_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    div-int v21, v21, v22

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 254
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 258
    :catch_4
    move-exception v5

    .line 259
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v21, "NetworkError"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 303
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_1

    .line 306
    :catch_5
    move-exception v5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 308
    const-string v21, "OppoGrThread"

    const-string v22, "Close All connect."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 225
    .end local v3    # "buf":[B
    .end local v4    # "count":Ljava/lang/Integer;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "length":Ljava/lang/Integer;
    .end local v14    # "nbytes":I
    .end local v17    # "rootDir":Ljava/lang/String;
    .end local v19    # "zipFile":Ljava/io/File;
    .end local v20    # "zipFilePath":Ljava/lang/String;
    :cond_7
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sget-object v22, Landroid/os/OppoManager;->SEPERATE_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    div-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 302
    .end local v9    # "fileLength":Ljava/lang/Integer;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v21

    .line 303
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 310
    :cond_8
    :goto_4
    throw v21

    .line 263
    .restart local v3    # "buf":[B
    .restart local v4    # "count":Ljava/lang/Integer;
    .restart local v9    # "fileLength":Ljava/lang/Integer;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "length":Ljava/lang/Integer;
    .restart local v14    # "nbytes":I
    .restart local v17    # "rootDir":Ljava/lang/String;
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "zipFile":Ljava/io/File;
    .restart local v20    # "zipFilePath":Ljava/lang/String;
    :cond_9
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->needBeDeletes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/oppo/OppoGrThread;->unZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 268
    .local v10, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/oppo/OppoGrThread;->setFileWritable(Ljava/lang/String;)V

    .line 270
    if-eqz v10, :cond_c

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_c

    .line 272
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_a

    .line 273
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 275
    .local v8, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->needBeDeletes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->grFiles:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 279
    .end local v8    # "file":Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->grFiles:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/server/oppo/OppoGrThread$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/oppo/OppoGrThread$1;-><init>(Lcom/android/server/oppo/OppoGrThread;)V

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->grFiles:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 286
    .local v7, "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    .line 291
    .end local v7    # "f":Ljava/io/File;
    :cond_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/oppo/OppoGrThread;->installApk(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 303
    .end local v11    # "i":I
    :cond_c
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_1

    .line 306
    :catch_6
    move-exception v5

    .line 307
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 308
    const-string v21, "OppoGrThread"

    const-string v22, "Close All connect."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 292
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    :catch_7
    move-exception v5

    .line 293
    .restart local v5    # "e":Ljava/lang/Exception;
    const/16 v21, 0x0

    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 303
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->is:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->fos:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_1

    .line 306
    :catch_8
    move-exception v5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 308
    const-string v21, "OppoGrThread"

    const-string v22, "Close All connect."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    .end local v3    # "buf":[B
    .end local v4    # "count":Ljava/lang/Integer;
    .end local v9    # "fileLength":Ljava/lang/Integer;
    .end local v10    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "length":Ljava/lang/Integer;
    .end local v14    # "nbytes":I
    .end local v17    # "rootDir":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "zipFile":Ljava/io/File;
    .end local v20    # "zipFilePath":Ljava/lang/String;
    :catch_9
    move-exception v5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 308
    const-string v21, "OppoGrThread"

    const-string v22, "Close All connect."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v5

    .line 307
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 308
    const-string v22, "OppoGrThread"

    const-string v23, "Close All connect."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private installApk(Ljava/io/File;)V
    .locals 5
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->pm:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oppo/OppoGrThread;->observer:Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 465
    return-void
.end method

.method private reinstallApk()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->pm:Landroid/content/pm/PackageManager;

    .line 340
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->basePathCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoGrThread;->installApk(Ljava/io/File;)V

    .line 341
    return-void
.end method

.method private setFileWritable(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "command":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 319
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 320
    .local v2, "proc":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 321
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v2    # "proc":Ljava/lang/Process;
    .end local v3    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unZipFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "rootDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "zipFileName":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 367
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 369
    :cond_0
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 370
    .local v9, "zFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    .line 371
    .local v10, "zList":Ljava/util/Enumeration;
    const/4 v11, 0x0

    .line 372
    .local v11, "ze":Ljava/util/zip/ZipEntry;
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 373
    .local v1, "buf":[B
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 374
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 375
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 377
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 381
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v8, "targetFile":Ljava/io/File;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 385
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v4, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 387
    .local v6, "readLen":I
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v4, v1, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    .line 388
    const/4 v13, 0x0

    invoke-virtual {v5, v1, v13, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 391
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 392
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-direct {p0, v3}, Lcom/android/server/oppo/OppoGrThread;->setFileWritable(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "readLen":I
    .end local v8    # "targetFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 396
    return-object v7
.end method

.method private uninstallGrs()V
    .locals 6

    .prologue
    .line 330
    sget-object v0, Landroid/os/OppoManager;->grList:Ljava/util/List;

    .line 331
    .local v0, "grList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/oppo/OppoGrThread;->pm:Landroid/content/pm/PackageManager;

    new-instance v4, Lcom/android/server/oppo/OppoGrThread$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/oppo/OppoGrThread$PackageDeleteObserver;-><init>(Lcom/android/server/oppo/OppoGrThread;Lcom/android/server/oppo/OppoGrThread$1;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public openDialog(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "maxProgress"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 400
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    .line 401
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 403
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->tipTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/oppo/OppoGrThread;->tipContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 407
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 409
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/oppo/OppoGrThread;->grAbandon:Ljava/lang/String;

    new-instance v3, Lcom/android/server/oppo/OppoGrThread$2;

    invoke-direct {v3, p0}, Lcom/android/server/oppo/OppoGrThread$2;-><init>(Lcom/android/server/oppo/OppoGrThread;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 437
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 347
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/oppo/OppoGrThread;->downloadGR()V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/oppo/OppoGrThread;->reinstallApk()V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
