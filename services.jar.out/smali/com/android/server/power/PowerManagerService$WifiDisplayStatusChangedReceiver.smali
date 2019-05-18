.class final Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayStatusChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4299
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 4299
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4302
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4304
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4305
    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplayStatus;

    .line 4307
    .local v1, "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    # setter for: Lcom/android/server/power/PowerManagerService;->mWfdEnabled:Z
    invoke-static {v4, v2}, Lcom/android/server/power/PowerManagerService;->access$5002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4308
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<<<< WifiDisplayStatusChangedReceiver >>>>> mWfdEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWfdEnabled:Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4313
    .end local v1    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v3

    .line 4314
    return-void

    .line 4307
    .restart local v1    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4310
    .end local v1    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :catch_0
    move-exception v0

    .line 4311
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "PowerManagerService"

    const-string v4, "WifiDisplayStatusChangedReceiver: something wrong, got a null pointer"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4313
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
