.class public final Lcom/color/screenshot/ColorScreenshotManager;
.super Ljava/lang/Object;
.source "ColorScreenshotManager.java"


# static fields
.field private static final DBG:Z = false

.field public static final LONGSHOT_SUPPORTED:Ljava/lang/String; = "longshot_supported"

.field public static final NAVIGATIONBAR_VISIBLE:Ljava/lang/String; = "navigationbar_visible"

.field public static final STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar_visible"

.field private static final TAG:Ljava/lang/String; = "ColorScreenshotManager"

.field private static sInstance:Lcom/color/screenshot/ColorScreenshotManager;


# instance fields
.field private final mService:Lcom/color/screenshot/IColorScreenshotManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "color_screenshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorScreenshotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    .line 71
    return-void
.end method

.method public static getInstance()Lcom/color/screenshot/ColorScreenshotManager;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/color/screenshot/ColorScreenshotManager;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/color/screenshot/ColorScreenshotManager;

    invoke-direct {v0}, Lcom/color/screenshot/ColorScreenshotManager;-><init>()V

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static peekInstance()Lcom/color/screenshot/ColorScreenshotManager;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 3

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v2}, Lcom/color/screenshot/IColorScreenshotManager;->isLongshotHandleState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMode()Z
    .locals 3

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v2}, Lcom/color/screenshot/IColorScreenshotManager;->isLongshotMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMoveState()Z
    .locals 3

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v2}, Lcom/color/screenshot/IColorScreenshotManager;->isLongshotMoveState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyLongshotScroll(Z)V
    .locals 2
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorScreenshotManager;->notifyLongshotScroll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorScreenshotManager;->registerLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLongshotSupport(Z)V
    .locals 2
    .param p1, "isSupported"    # Z

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorScreenshotManager;->setLongshotSupport(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public takeLongshot(ZZ)V
    .locals 2
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1, p2}, Lcom/color/screenshot/IColorScreenshotManager;->takeLongshot(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorScreenshotManager;->unregisterLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
