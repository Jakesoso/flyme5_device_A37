.class Lcom/android/server/CheckBlockedException$2;
.super Ljava/lang/Object;
.source "CheckBlockedException.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CheckBlockedException;->CheckLastRebootExceptionMsgFromProperty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CheckBlockedException;

.field final synthetic val$strSend:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/CheckBlockedException;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/CheckBlockedException$2;->this$0:Lcom/android/server/CheckBlockedException;

    iput-object p2, p0, Lcom/android/server/CheckBlockedException$2;->val$strSend:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lcom/android/server/DCSMsg;->getInstance()Lcom/android/server/DCSMsg;

    move-result-object v0

    const-string v1, "HungTaskTag"

    const-string v2, "HungTaskEventID"

    iget-object v3, p0, Lcom/android/server/CheckBlockedException$2;->val$strSend:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DCSMsg;->sendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "persist.hungtask.oppo.kill"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
