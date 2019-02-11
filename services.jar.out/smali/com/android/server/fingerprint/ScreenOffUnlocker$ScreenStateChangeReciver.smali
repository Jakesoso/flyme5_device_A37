.class public Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOffUnlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/ScreenOffUnlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenStateChangeReciver"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 85
    const-string v0, "ScreenStateChangeReciver"

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ScreenStateChangeReciver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ,action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    # getter for: Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;
    invoke-static {v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->access$000(Lcom/android/server/fingerprint/ScreenOffUnlocker;)Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 93
    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    # getter for: Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;
    invoke-static {v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->access$000(Lcom/android/server/fingerprint/ScreenOffUnlocker;)Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    :cond_1
    return-void
.end method
