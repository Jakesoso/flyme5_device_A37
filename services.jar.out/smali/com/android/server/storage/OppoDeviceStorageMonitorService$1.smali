.class Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoDeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/OppoDeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;I)V

    .line 325
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationSd()V
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$500(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V
    invoke-static {v2, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;I)V

    .line 330
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationData()V
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$600(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLocaleChanged:Z
    invoke-static {v2, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$702(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Z)Z

    .line 355
    :cond_2
    :goto_0
    return-void

    .line 333
    :cond_3
    const-string v2, "com.oppo.showLowStorageAlert"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogData()V
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$800(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    goto :goto_0

    .line 335
    :cond_4
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    const-string v1, ""

    .line 337
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$500(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    :goto_1
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    :goto_2
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    const-string v3, "data_sd_low"

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$900(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 349
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$1000(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 350
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    const-string v3, "sd_mounted"

    const-string v4, "1"

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$900(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 340
    :cond_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 345
    :cond_6
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 352
    :cond_7
    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    const-string v3, "sd_mounted"

    const-string v4, "0"

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$900(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
