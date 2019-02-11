.class public Lcom/android/server/coloros/OppoSysStateManager;
.super Ljava/lang/Object;
.source "OppoSysStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/coloros/OppoSysStateManager$1;,
        Lcom/android/server/coloros/OppoSysStateManager$LocalService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoSysStateManager"

.field private static mOppoSysStateManager:Lcom/android/server/coloros/OppoSysStateManager;


# instance fields
.field private DEBUG:Z

.field mIsCharging:Z

.field mIsScreenOn:Z

.field mRestrictStartupBg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/coloros/OppoSysStateManager;->mOppoSysStateManager:Lcom/android/server/coloros/OppoSysStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->DEBUG:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    .line 40
    const-class v0, Lcom/android/server/coloros/OppoSysStateManagerInternal;

    new-instance v1, Lcom/android/server/coloros/OppoSysStateManager$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/coloros/OppoSysStateManager$LocalService;-><init>(Lcom/android/server/coloros/OppoSysStateManager;Lcom/android/server/coloros/OppoSysStateManager$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/coloros/OppoSysStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/coloros/OppoSysStateManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/coloros/OppoSysStateManager;->judgeRestrictStartupBg()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/coloros/OppoSysStateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/coloros/OppoSysStateManager;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->DEBUG:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/coloros/OppoSysStateManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/coloros/OppoSysStateManager;->mOppoSysStateManager:Lcom/android/server/coloros/OppoSysStateManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/server/coloros/OppoSysStateManager;

    invoke-direct {v0}, Lcom/android/server/coloros/OppoSysStateManager;-><init>()V

    sput-object v0, Lcom/android/server/coloros/OppoSysStateManager;->mOppoSysStateManager:Lcom/android/server/coloros/OppoSysStateManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/server/coloros/OppoSysStateManager;->mOppoSysStateManager:Lcom/android/server/coloros/OppoSysStateManager;

    return-object v0
.end method

.method private judgeRestrictStartupBg()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    .line 69
    iput-boolean v1, p0, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    if-eqz v0, :cond_1

    .line 72
    iput-boolean v1, p0, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    goto :goto_0
.end method


# virtual methods
.method public isCharging()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    return v0
.end method

.method public isScreenOff()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    return v0
.end method

.method public restrictStartupBg()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    return v0
.end method
