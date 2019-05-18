.class Lcom/android/server/oppo/OppoRootCheckHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoRootCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoRootCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoRootCheckHelper;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoRootCheckHelper;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/oppo/OppoRootCheckHelper$1;->this$0:Lcom/android/server/oppo/OppoRootCheckHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v1, "oppo.intent.action.SYSTEM_HAVE_BEEN_BROKEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper$1;->this$0:Lcom/android/server/oppo/OppoRootCheckHelper;

    # invokes: Lcom/android/server/oppo/OppoRootCheckHelper;->sendStartCheckMessage()V
    invoke-static {v1}, Lcom/android/server/oppo/OppoRootCheckHelper;->access$200(Lcom/android/server/oppo/OppoRootCheckHelper;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v1, "oppo.intent.action.ABANDON_SYSTEM_REPAIR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper$1;->this$0:Lcom/android/server/oppo/OppoRootCheckHelper;

    # invokes: Lcom/android/server/oppo/OppoRootCheckHelper;->sendCancelRootNoticeMessage()V
    invoke-static {v1}, Lcom/android/server/oppo/OppoRootCheckHelper;->access$300(Lcom/android/server/oppo/OppoRootCheckHelper;)V

    goto :goto_0
.end method
