.class public Lcom/color/screenshot/ColorScreenshotManagerService;
.super Lcom/color/screenshot/IColorScreenshotManager$Stub;
.source "ColorScreenshotManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/screenshot/ColorScreenshotManagerService$1;,
        Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT_LONGSHOT:Landroid/content/ComponentName;

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorScreenshotManagerService"

.field private static sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.coloros.screenshot"

    const-string v2, "com.coloros.screenshot.LongshotService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    .line 60
    new-instance v1, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-direct {v1, p0, v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;-><init>(Lcom/color/screenshot/ColorScreenshotManagerService;Lcom/color/screenshot/ColorScreenshotManagerService$1;)V

    iput-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mUserId:I

    .line 67
    iput-object p1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Lcom/color/util/ColorLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/color/screenshot/ColorScreenshotManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 174
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 175
    :cond_0
    const-string v1, "ColorScreenshotManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- bind failed: service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method private createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createLongshotIntent(ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 167
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/color/screenshot/ColorScreenshotManagerService;->createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "statusbar_visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_visible"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "longshot_supported"

    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mIsSupported:Z
    invoke-static {v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$200(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/color/screenshot/ColorScreenshotManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/color/screenshot/ColorScreenshotManagerService;

    invoke-direct {v0, p0}, Lcom/color/screenshot/ColorScreenshotManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    .line 82
    :cond_0
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 4

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/color/screenshot/ColorScreenshotManagerService;->isLongshotMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v2

    invoke-interface {v2}, Lcom/color/screenshot/IColorLongshot;->isHandleState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLongshotMode()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v0}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongshotMoveState()Z
    .locals 4

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/color/screenshot/ColorScreenshotManagerService;->isLongshotMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v2

    invoke-interface {v2}, Lcom/color/screenshot/IColorLongshot;->isMoveState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyLongshotScroll(Z)V
    .locals 3
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/color/screenshot/ColorScreenshotManagerService;->isLongshotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorLongshot;->notifyScroll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-virtual {v0, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->registerListener(Lcom/color/screenshot/IColorLongshotListener;)V

    .line 98
    return-void
.end method

.method public setLongshotSupport(Z)V
    .locals 3
    .param p1, "isSupported"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # setter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mIsSupported:Z
    invoke-static {v1, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$202(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;Z)Z

    .line 150
    invoke-virtual {p0}, Lcom/color/screenshot/ColorScreenshotManagerService;->isLongshotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorLongshot;->setSupport(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takeLongshot(ZZ)V
    .locals 5
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/color/screenshot/ColorScreenshotManagerService;->createLongshotIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/color/screenshot/ColorScreenshotManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 92
    .local v0, "result":Z
    const/4 v1, 0x0

    const-string v2, "ColorScreenshotManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start : bindService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public unregisterLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-virtual {v0, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->unregisterListener(Lcom/color/screenshot/IColorLongshotListener;)V

    .line 103
    return-void
.end method
