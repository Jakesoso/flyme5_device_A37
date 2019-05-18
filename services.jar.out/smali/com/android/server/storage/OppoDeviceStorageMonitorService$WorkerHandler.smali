.class Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
.super Landroid/os/Handler;
.source "OppoDeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/OppoDeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCheckSD()V
    invoke-static {v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$000(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->dataCriticalLowAlert()V
    invoke-static {v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    goto :goto_0
.end method
