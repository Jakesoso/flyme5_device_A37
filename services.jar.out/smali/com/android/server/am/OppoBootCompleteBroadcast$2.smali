.class Lcom/android/server/am/OppoBootCompleteBroadcast$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "OppoBootCompleteBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoBootCompleteBroadcast;->sendOppoBootCompleteBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoBootCompleteBroadcast;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$2;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 130
    const-string v0, "ActivityManager"

    const-string v1, "AMS: ACTION_OPPO_BOOT_COMPLETED process finish."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
