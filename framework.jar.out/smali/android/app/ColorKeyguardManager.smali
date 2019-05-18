.class public Landroid/app/ColorKeyguardManager;
.super Ljava/lang/Object;
.source "ColorKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ColorKeyguardManager$IKeyguardApp;,
        Landroid/app/ColorKeyguardManager$KeyguardHandler;
    }
.end annotation


# static fields
.field private static COMMAND_HEADER_SYNC:Ljava/lang/String; = null

.field private static final MSG_COMMAND_ARRIVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ColorKeyguardManager"

.field private static sIsRegistered:Z

.field private static sKeyguardAppCallback:Landroid/app/ColorKeyguardManager$IKeyguardApp;

.field private static sRemote:Landroid/view/IOppoWindowManagerImpl;


# instance fields
.field private mHandler:Landroid/app/ColorKeyguardManager$KeyguardHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ColorKeyguardManager;->sRemote:Landroid/view/IOppoWindowManagerImpl;

    .line 30
    const-string v0, "Sync"

    sput-object v0, Landroid/app/ColorKeyguardManager;->COMMAND_HEADER_SYNC:Ljava/lang/String;

    .line 33
    const-string v0, "ColorKeyguardManager"

    const-string/jumbo v1, "static init."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v0}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    sput-object v0, Landroid/app/ColorKeyguardManager;->sRemote:Landroid/view/IOppoWindowManagerImpl;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/ColorKeyguardManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/ColorKeyguardManager;->isSyncCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ColorKeyguardManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/ColorKeyguardManager;->scheduleArriveSyncCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ColorKeyguardManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/ColorKeyguardManager;->scheduleArriveCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ColorKeyguardManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/ColorKeyguardManager;->handleCommand(Ljava/lang/String;)V

    return-void
.end method

.method private handleCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Landroid/app/ColorKeyguardManager;->sKeyguardAppCallback:Landroid/app/ColorKeyguardManager$IKeyguardApp;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Landroid/app/ColorKeyguardManager;->sKeyguardAppCallback:Landroid/app/ColorKeyguardManager$IKeyguardApp;

    invoke-interface {v0, p1}, Landroid/app/ColorKeyguardManager$IKeyguardApp;->onCommand(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private isSyncCommand(Ljava/lang/String;)Z
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 63
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 64
    .local v0, "commands":[Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v2, Landroid/app/ColorKeyguardManager;->COMMAND_HEADER_SYNC:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 69
    .end local v0    # "commands":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private scheduleArriveCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v1, p0, Landroid/app/ColorKeyguardManager;->mHandler:Landroid/app/ColorKeyguardManager$KeyguardHandler;

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Landroid/app/ColorKeyguardManager;->mHandler:Landroid/app/ColorKeyguardManager$KeyguardHandler;

    invoke-virtual {v1, v0}, Landroid/app/ColorKeyguardManager$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleArriveSyncCommand(Ljava/lang/String;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    .local v2, "start":J
    sget-object v4, Landroid/app/ColorKeyguardManager;->sKeyguardAppCallback:Landroid/app/ColorKeyguardManager$IKeyguardApp;

    if-eqz v4, :cond_0

    .line 75
    sget-object v4, Landroid/app/ColorKeyguardManager;->sKeyguardAppCallback:Landroid/app/ColorKeyguardManager$IKeyguardApp;

    invoke-interface {v4, p1}, Landroid/app/ColorKeyguardManager$IKeyguardApp;->onSyncCommand(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 78
    .local v0, "spend":J
    const-wide/16 v4, 0x14

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 79
    const-string v4, "ColorKeyguardManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Schedule sync command("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") spends "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms, this may result in keyguard block."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public registerKeyguardCallback(Landroid/app/ColorKeyguardManager$IKeyguardApp;Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/ColorKeyguardManager$IKeyguardApp;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 38
    sput-object p1, Landroid/app/ColorKeyguardManager;->sKeyguardAppCallback:Landroid/app/ColorKeyguardManager$IKeyguardApp;

    .line 39
    sget-boolean v1, Landroid/app/ColorKeyguardManager;->sIsRegistered:Z

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroid/app/ColorKeyguardManager$KeyguardHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/app/ColorKeyguardManager$KeyguardHandler;-><init>(Landroid/app/ColorKeyguardManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/ColorKeyguardManager;->mHandler:Landroid/app/ColorKeyguardManager$KeyguardHandler;

    .line 42
    :try_start_0
    sget-object v1, Landroid/app/ColorKeyguardManager;->sRemote:Landroid/view/IOppoWindowManagerImpl;

    new-instance v2, Landroid/app/ColorKeyguardManager$1;

    invoke-direct {v2, p0}, Landroid/app/ColorKeyguardManager$1;-><init>(Landroid/app/ColorKeyguardManager;)V

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v1, v2, v3, p2}, Landroid/view/IOppoWindowManagerImpl;->openKeyguardSession(Landroid/app/IColorKeyguardSessionCallback;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/app/ColorKeyguardManager;->sIsRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorKeyguardManager"

    const-string/jumbo v2, "registerKeyguardCallback, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestKeyguard(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    sget-object v1, Landroid/app/ColorKeyguardManager;->sRemote:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v1, p1}, Landroid/view/IOppoWindowManagerImpl;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorKeyguardManager"

    const-string/jumbo v2, "requestKeyguard, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
