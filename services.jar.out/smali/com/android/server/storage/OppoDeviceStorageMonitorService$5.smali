.class Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;
.super Ljava/lang/Object;
.source "OppoDeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogData()V
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
    .line 581
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$1200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentOneKeyMove:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$1400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    const-string v1, "dialog_data_low_with_AKeyMove"

    const-string v2, "act_a_key_move"

    const/4 v3, 0x0

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$900(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 586
    return-void
.end method
