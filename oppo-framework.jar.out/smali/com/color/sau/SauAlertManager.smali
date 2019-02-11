.class public Lcom/color/sau/SauAlertManager;
.super Ljava/lang/Object;
.source "SauAlertManager.java"


# static fields
.field public static final ACTION_START_DOWNLOAD:I = 0x0

.field public static final ACTION_START_INSTALL:I = 0x1

.field public static final CAN_NOT_USE_OLD:I = 0x0

.field public static final CAN_USE_OLD:I = 0x1

.field public static final DOWNLOAD_FINISH:I = 0x1

.field public static final DOWNLOAD_UNFINISH:I = 0x0

.field public static final INSTALL_FINISH:I = 0x1

.field public static final INSTALL_UNFINISH:I = 0x0

.field public static final MOBILE_CONNECTED:I = 0x1

.field public static final NO_NETWORK:I = 0x0

.field public static final PATCH_FINISH:I = 0x1

.field public static final PATCH_UNFINISH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SauJar"

.field private static final UPGRADE_SERVICE_ACTION:Ljava/lang/String; = "oppo.intent.action.SAU_APP_JAR_UPGRADE_SERVICE"

.field public static final WIFI_CONNECTED:I = 0x2


# instance fields
.field private final DEBUG:Z

.field private mAllSize:I

.field private mCanUseOld:Z

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private final mDialogListener:Lcom/color/sau/ISauUpgradeDialog;

.field private mDownloadFinished:Z

.field private mFileName:Ljava/lang/String;

.field private mInstallFinished:Z

.field private mMd5All:Ljava/lang/String;

.field private mMd5Patch:Ljava/lang/String;

.field private mNewVerName:Ljava/lang/String;

.field private mOldFileName:Ljava/lang/String;

.field private mPatchFinished:Z

.field private mPatchSize:I

.field private mPkg:Ljava/lang/String;

.field private mProgressDialog:Lcom/color/sau/SauWaitProgressDialog;

.field private mType:I

.field private mUpgradeDialog:Lcom/color/widget/ColorSAUAlertDialog;

.field private mUrl:Ljava/lang/String;

.field private pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Lcom/color/sau/SauAlertManager;->DEBUG:Z

    .line 40
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mUrl:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mFileName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mNewVerName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mDescription:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/color/sau/SauAlertManager;->mPatchSize:I

    .line 47
    iput v1, p0, Lcom/color/sau/SauAlertManager;->mAllSize:I

    .line 49
    iput-boolean v2, p0, Lcom/color/sau/SauAlertManager;->mCanUseOld:Z

    .line 50
    iput-boolean v1, p0, Lcom/color/sau/SauAlertManager;->mPatchFinished:Z

    .line 51
    iput-boolean v1, p0, Lcom/color/sau/SauAlertManager;->mDownloadFinished:Z

    .line 52
    iput-boolean v1, p0, Lcom/color/sau/SauAlertManager;->mInstallFinished:Z

    .line 55
    iput v1, p0, Lcom/color/sau/SauAlertManager;->mType:I

    .line 56
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mMd5Patch:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mMd5All:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mOldFileName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    .line 62
    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mProgressDialog:Lcom/color/sau/SauWaitProgressDialog;

    .line 115
    new-instance v0, Lcom/color/sau/SauAlertManager$1;

    invoke-direct {v0, p0}, Lcom/color/sau/SauAlertManager$1;-><init>(Lcom/color/sau/SauAlertManager;)V

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mDialogListener:Lcom/color/sau/ISauUpgradeDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/color/sau/SauAlertManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/color/sau/SauAlertManager;->killMySelf()V

    return-void
.end method

.method static synthetic access$200(Lcom/color/sau/SauAlertManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/sau/SauAlertManager;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/color/sau/SauAlertManager;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/color/sau/SauAlertManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/color/sau/SauAlertManager;->mCanUseOld:Z

    return v0
.end method

.method static synthetic access$500(Lcom/color/sau/SauAlertManager;)Lcom/color/sau/SauWaitProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mProgressDialog:Lcom/color/sau/SauWaitProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/color/sau/SauAlertManager;Lcom/color/sau/SauWaitProgressDialog;)Lcom/color/sau/SauWaitProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/color/sau/SauAlertManager;
    .param p1, "x1"    # Lcom/color/sau/SauWaitProgressDialog;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/color/sau/SauAlertManager;->mProgressDialog:Lcom/color/sau/SauWaitProgressDialog;

    return-object p1
.end method

.method private createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 176
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 178
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 179
    :cond_0
    const/4 v2, 0x0

    .line 189
    :goto_0
    return-object v2

    .line 182
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 183
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 184
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 185
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 188
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getNetworkState(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 194
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 195
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 197
    .local v3, "wifiState":Landroid/net/NetworkInfo$State;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 198
    .local v2, "mobileState":Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v6, :cond_0

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_2

    .line 199
    :cond_0
    const/4 v4, 0x2

    .line 206
    .end local v2    # "mobileState":Landroid/net/NetworkInfo$State;
    .end local v3    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    return v4

    .line 200
    .restart local v2    # "mobileState":Landroid/net/NetworkInfo$State;
    .restart local v3    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_2
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v6, :cond_3

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v6, :cond_1

    :cond_3
    move v4, v5

    .line 201
    goto :goto_0
.end method

.method private getSizeString(J)Ljava/lang/String;
    .locals 5
    .param p1, "size"    # J

    .prologue
    const/high16 v4, 0x49800000    # 1048576.0f

    const/high16 v3, 0x44800000    # 1024.0f

    .line 211
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const-wide/32 v0, 0x19000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    const-wide/32 v0, 0xfa000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_2
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_3
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 221
    :cond_4
    const-wide/32 v0, 0x3e800000

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :cond_5
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#######0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, p1

    const/high16 v3, 0x4e800000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private killMySelf()V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 172
    return-void
.end method


# virtual methods
.method public createAlertDialog()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 70
    const-string v0, "SauJar"

    const-string v1, "AlertService onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mNewVerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mNewVerName:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mDescription:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mPatchSize:I

    iput v0, p0, Lcom/color/sau/SauAlertManager;->mPatchSize:I

    .line 77
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mAllSize:I

    iput v0, p0, Lcom/color/sau/SauAlertManager;->mAllSize:I

    .line 79
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mCanUseOld:I

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/color/sau/SauAlertManager;->mCanUseOld:Z

    .line 80
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mPatchFinished:I

    if-ne v0, v9, :cond_1

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/color/sau/SauAlertManager;->mPatchFinished:Z

    .line 81
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mDownloadFinished:I

    if-ne v0, v9, :cond_2

    move v0, v9

    :goto_2
    iput-boolean v0, p0, Lcom/color/sau/SauAlertManager;->mDownloadFinished:Z

    .line 82
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mInstallFinished:I

    if-ne v0, v9, :cond_3

    move v0, v9

    :goto_3
    iput-boolean v0, p0, Lcom/color/sau/SauAlertManager;->mInstallFinished:Z

    .line 85
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mUrl:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mType:I

    iput v0, p0, Lcom/color/sau/SauAlertManager;->mType:I

    .line 87
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mMd5Patch:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mMd5Patch:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mMd5All:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mMd5All:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mOldFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mOldFileName:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    iget-object v0, v0, Lcom/color/sau/SauPkgUpdateInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mFileName:Ljava/lang/String;

    .line 94
    const-string v0, "SauJar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlertService receive info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", newVerName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/color/sau/SauAlertManager;->mNewVerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", patchFinished="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/color/sau/SauAlertManager;->mPatchFinished:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canUseOld="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/color/sau/SauAlertManager;->mCanUseOld:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", fileName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/color/sau/SauAlertManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", patchSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/color/sau/SauAlertManager;->mPatchSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/color/sau/SauAlertManager;->getNetworkState(Landroid/content/Context;)I

    move-result v8

    .line 99
    .local v8, "networkState":I
    if-nez v8, :cond_4

    iget-boolean v0, p0, Lcom/color/sau/SauAlertManager;->mPatchFinished:Z

    if-nez v0, :cond_4

    .line 100
    const-string v0, "SauJar"

    const-string v1, "no network connected and need download, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_4
    return v2

    .end local v8    # "networkState":I
    :cond_0
    move v0, v2

    .line 79
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 81
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 82
    goto/16 :goto_3

    .line 105
    .restart local v8    # "networkState":I
    :cond_4
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    move v4, v9

    .line 107
    .local v4, "wifiConnected":Z
    :goto_5
    new-instance v0, Lcom/color/widget/ColorSAUAlertDialog;

    iget-object v1, p0, Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/widget/ColorSAUAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/sau/SauAlertManager;->mUpgradeDialog:Lcom/color/widget/ColorSAUAlertDialog;

    .line 108
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mDialogListener:Lcom/color/sau/ISauUpgradeDialog;

    invoke-static {v0}, Lcom/color/sau/SauUpgradeAlertDialogFunc;->setDialogListener(Lcom/color/sau/ISauUpgradeDialog;)V

    .line 109
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mUpgradeDialog:Lcom/color/widget/ColorSAUAlertDialog;

    iget-object v1, p0, Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/color/sau/SauAlertManager;->mCanUseOld:Z

    if-nez v3, :cond_5

    move v2, v9

    :cond_5
    iget-boolean v3, p0, Lcom/color/sau/SauAlertManager;->mPatchFinished:Z

    iget-object v5, p0, Lcom/color/sau/SauAlertManager;->mNewVerName:Ljava/lang/String;

    iget v6, p0, Lcom/color/sau/SauAlertManager;->mPatchSize:I

    int-to-long v6, v6

    invoke-direct {p0, v6, v7}, Lcom/color/sau/SauAlertManager;->getSizeString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/color/sau/SauAlertManager;->mDescription:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/color/sau/SauUpgradeAlertDialogFunc;->processDialogFunc(Lcom/color/widget/ColorSAUAlertDialog;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/color/sau/SauAlertManager;->mUpgradeDialog:Lcom/color/widget/ColorSAUAlertDialog;

    invoke-virtual {v0}, Lcom/color/widget/ColorSAUAlertDialog;->show()V

    move v2, v9

    .line 112
    goto :goto_4

    .end local v4    # "wifiConnected":Z
    :cond_6
    move v4, v2

    .line 105
    goto :goto_5
.end method

.method public init(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/color/sau/SauPkgUpdateInfo;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/color/sau/SauAlertManager;->pkgInfo:Lcom/color/sau/SauPkgUpdateInfo;

    .line 67
    return-void
.end method
