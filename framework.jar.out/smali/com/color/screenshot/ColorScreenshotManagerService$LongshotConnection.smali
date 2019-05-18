.class Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;
.super Lcom/color/screenshot/IColorScreenshotCallback$Stub;
.source "ColorScreenshotManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/screenshot/ColorScreenshotManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongshotConnection"
.end annotation


# instance fields
.field private mIsSupported:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/screenshot/IColorLongshotListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/color/screenshot/IColorLongshot;

.field final synthetic this$0:Lcom/color/screenshot/ColorScreenshotManagerService;


# direct methods
.method private constructor <init>(Lcom/color/screenshot/ColorScreenshotManagerService;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->this$0:Lcom/color/screenshot/ColorScreenshotManagerService;

    invoke-direct {p0}, Lcom/color/screenshot/IColorScreenshotCallback$Stub;-><init>()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mIsSupported:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/screenshot/ColorScreenshotManagerService;Lcom/color/screenshot/ColorScreenshotManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService;
    .param p2, "x1"    # Lcom/color/screenshot/ColorScreenshotManagerService$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;-><init>(Lcom/color/screenshot/ColorScreenshotManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;
    .locals 1
    .param p0, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mIsSupported:Z

    return v0
.end method

.method static synthetic access$202(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mIsSupported:Z

    return p1
.end method


# virtual methods
.method public notifyMove()V
    .locals 6

    .prologue
    .line 218
    const/4 v3, 0x0

    const-string v4, "ColorScreenshotManagerService"

    const-string/jumbo v5, "notifyMove"

    invoke-static {v3, v4, v5}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/screenshot/IColorLongshotListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .local v2, "listener":Lcom/color/screenshot/IColorLongshotListener;
    :try_start_1
    invoke-interface {v2}, Lcom/color/screenshot/IColorLongshotListener;->onMove()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/color/screenshot/IColorLongshotListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 192
    const/4 v1, 0x0

    const-string v2, "ColorScreenshotManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lcom/color/screenshot/IColorLongshot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v1

    iput-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 194
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    invoke-interface {v1, p0}, Lcom/color/screenshot/IColorLongshot;->start(Lcom/color/screenshot/IColorScreenshotCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 205
    const/4 v0, 0x0

    const-string v1, "ColorScreenshotManagerService"

    const-string/jumbo v2, "onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 207
    return-void
.end method

.method registerListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    const-string v1, "ColorScreenshotManagerService"

    const-string/jumbo v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->this$0:Lcom/color/screenshot/ColorScreenshotManagerService;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/color/screenshot/ColorScreenshotManagerService;->access$300(Lcom/color/screenshot/ColorScreenshotManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 214
    return-void
.end method

.method unregisterListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
