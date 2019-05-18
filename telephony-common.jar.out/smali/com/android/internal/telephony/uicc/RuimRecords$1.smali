.class Lcom/android/internal/telephony/uicc/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1482
    if-nez p2, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1483
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1486
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1487
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "ACTION_SHUTDOWN_IPO: clear PHB_READY systemproperties"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1488
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1

    .line 1489
    sget-object v2, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$2102(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1494
    :cond_1
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1495
    .local v1, "operator":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandlePhbReadyReceiver ro.operator.optr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
