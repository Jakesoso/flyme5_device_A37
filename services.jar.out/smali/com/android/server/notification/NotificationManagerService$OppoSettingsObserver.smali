.class Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;
.super Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoSettingsObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    .line 933
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 937
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 940
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 941
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 942
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->update(Landroid/net/Uri;)V

    .line 943
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 947
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->update(Landroid/net/Uri;)V

    .line 948
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 951
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 952
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 953
    :cond_0
    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 954
    .local v1, "vibreateEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenRingingEnabled:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 955
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$OppoSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenRingingEnabled:Z
    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 958
    .end local v1    # "vibreateEnabled":Z
    :cond_2
    return-void
.end method
