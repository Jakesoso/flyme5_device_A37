.class Lcom/android/server/notification/NotificationManagerService$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 3
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4043
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$FileObserverPolicy;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4044
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4045
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 4046
    # getter for: Lcom/android/server/notification/NotificationManagerService;->DEBUG_PANIC:Z
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileObserverPolicy_path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    :cond_0
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4051
    # getter for: Lcom/android/server/notification/NotificationManagerService;->DEBUG_PANIC:Z
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",focusPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$FileObserverPolicy;->focusPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 4053
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/config/sys_nms_intercept_blacklist.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4054
    # getter for: Lcom/android/server/notification/NotificationManagerService;->DEBUG_PANIC:Z
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NotificationService"

    const-string v1, "onEvent: focusPath = OPPO_NOTIFICATION_BLACKLIST_FILE_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FileObserverPolicy;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->readConfigFile()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4058
    :cond_2
    return-void
.end method
