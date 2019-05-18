.class Lcom/android/server/pm/OppoAppDexOptManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OppoAppDexOptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OppoAppDexOptManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OppoAppDexOptManager;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 263
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$100(Lcom/android/server/pm/OppoAppDexOptManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # setter for: Lcom/android/server/pm/OppoAppDexOptManager;->isScreenOff:Z
    invoke-static {v2, v6}, Lcom/android/server/pm/OppoAppDexOptManager;->access$202(Lcom/android/server/pm/OppoAppDexOptManager;Z)Z

    .line 269
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$300(Lcom/android/server/pm/OppoAppDexOptManager;)Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->removeMessages(I)V

    .line 270
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$400(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$600(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$500(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # setter for: Lcom/android/server/pm/OppoAppDexOptManager;->isScreenOff:Z
    invoke-static {v2, v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$202(Lcom/android/server/pm/OppoAppDexOptManager;Z)Z

    .line 274
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # invokes: Lcom/android/server/pm/OppoAppDexOptManager;->hasListValue()Z
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$700(Lcom/android/server/pm/OppoAppDexOptManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$300(Lcom/android/server/pm/OppoAppDexOptManager;)Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$600(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/app/AlarmManager;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$500(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$400(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 281
    :cond_4
    const-string v2, "oppo.intent.action.APP_DEX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->isScreenOff:Z
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$200(Lcom/android/server/pm/OppoAppDexOptManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$300(Lcom/android/server/pm/OppoAppDexOptManager;)Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 284
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/OppoAppDexOptManager$1;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;
    invoke-static {v2}, Lcom/android/server/pm/OppoAppDexOptManager;->access$300(Lcom/android/server/pm/OppoAppDexOptManager;)Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
