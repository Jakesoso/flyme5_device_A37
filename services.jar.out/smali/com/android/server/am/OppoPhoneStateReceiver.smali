.class public Lcom/android/server/am/OppoPhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoPhoneStateReceiver.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final STATE_KEY:Ljava/lang/String; = "state"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const-string v1, "OppoProcessManager"

    iput-object v1, p0, Lcom/android/server/am/OppoPhoneStateReceiver;->TAG:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/OppoPhoneStateReceiver;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 37
    invoke-static {p1}, Lcom/android/server/am/OppoProcessManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoProcessManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoPhoneStateReceiver;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/server/am/OppoPhoneStateReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_PHONE_STATE_CHANGED in OppoPhoneStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "phoneState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OppoPhoneStateReceiver;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OppoProcessManager;->setPhoneState(Ljava/lang/String;)V

    .line 50
    .end local v0    # "phoneState":Ljava/lang/String;
    :cond_0
    return-void
.end method
