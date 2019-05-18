.class Lcom/android/internal/policy/impl/OppoAppFrozen;
.super Ljava/lang/Object;
.source "OppoAppFrozen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ID_APP_FROZEN:Ljava/lang/String; = "app_frozen_detect"

.field private static final TAG:Ljava/lang/String; = "OppoAppFrozen"


# instance fields
.field private final ACTION_OPPO_APP_FROZEN_DCS_UPLOADE:Ljava/lang/String;

.field private final ALLOW_UPLOAD_DCS:Z

.field private final APP_FROZEN_DELAY_TIME:J

.field private OPPODEBUG:Z

.field private final OPPO_APP_FROZEN_TIMEOUT:I

.field private final OPPO_HOME_DISPATCH_TIMEOUT:I

.field private mContext:Landroid/content/Context;

.field private mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

.field private mHomeMsgSent:Z

.field private mIntentDcs:Landroid/content/Intent;

.field private mPwm:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pwm"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->OPPODEBUG:Z

    .line 46
    iput v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->OPPO_HOME_DISPATCH_TIMEOUT:I

    .line 47
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->OPPO_APP_FROZEN_TIMEOUT:I

    .line 48
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->APP_FROZEN_DELAY_TIME:J

    .line 49
    const-string v1, "android.intent.action.OPPO_APP_FROZEN_DCS_UPLOADE"

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->ACTION_OPPO_APP_FROZEN_DCS_UPLOADE:Ljava/lang/String;

    .line 51
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->ALLOW_UPLOAD_DCS:Z

    .line 52
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mIntentDcs:Landroid/content/Intent;

    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mPwm:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OppoAppFrozen"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v1, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;-><init>(Lcom/android/internal/policy/impl/OppoAppFrozen;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/OppoAppFrozen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoAppFrozen;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoAppFrozen;->getForegroundPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/OppoAppFrozen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoAppFrozen;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoAppFrozen;)Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoAppFrozen;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mPwm:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoAppFrozen;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoAppFrozen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoAppFrozen;->getUidForPkgName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoAppFrozen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoAppFrozen;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OppoAppFrozen;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getForegroundPackage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 154
    new-instance v3, Landroid/app/OppoActivityManager;

    invoke-direct {v3}, Landroid/app/OppoActivityManager;-><init>()V

    .line 155
    .local v3, "oAm":Landroid/app/OppoActivityManager;
    const/4 v0, 0x0

    .line 156
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 158
    .local v2, "fgPkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    :cond_0
    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OppoAppFrozen"

    const-string v5, "getTopActivityComponentName exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUidForPkgName(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 172
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    .line 174
    .local v1, "packageUid":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "OppoAppFrozen"

    const-string v4, "getUidForPkgName: Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_APP_FROZEN_DCS_UPLOADE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mIntentDcs:Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mIntentDcs:Landroid/content/Intent;

    const-string v1, "eventId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mIntentDcs:Landroid/content/Intent;

    const-string v1, "act"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mIntentDcs:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mIntentDcs:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    return-void
.end method


# virtual methods
.method public appFrozenHandle()V
    .locals 7

    .prologue
    .line 84
    const-string v4, "sys.app_freeze_timeout"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "pkgName":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 86
    .local v1, "isAppFrozen":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 87
    if-eqz v3, :cond_2

    .line 88
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 89
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "PKGNAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 92
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    const-string v4, "OppoAppFrozen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appFrozenHandle: pkgName= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 85
    .end local v1    # "isAppFrozen":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 95
    .restart local v1    # "isAppFrozen":Z
    :cond_2
    const-string v4, "OppoAppFrozen"

    const-string v5, "appFrozenHandle: pkgName is null!!! do nothing!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearHomeDispatchTimeoutMsg()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->removeMessages(I)V

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->OPPODEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoAppFrozen"

    const-string v1, "clearHomeDispatchTimeoutMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public sendHomeDispatchTimeoutMsg()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z

    if-nez v1, :cond_0

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z

    .line 69
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->mHandlerOppo:Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen;->OPPODEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoAppFrozen"

    const-string v2, "sendHomeDispatchTimeoutMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
