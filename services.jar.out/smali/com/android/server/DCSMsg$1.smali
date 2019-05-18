.class Lcom/android/server/DCSMsg$1;
.super Ljava/lang/Object;
.source "DCSMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DCSMsg;->sendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DCSMsg;

.field final synthetic val$strEventID:Ljava/lang/String;

.field final synthetic val$strLogTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/DCSMsg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/DCSMsg$1;->this$0:Lcom/android/server/DCSMsg;

    iput-object p2, p0, Lcom/android/server/DCSMsg$1;->val$strEventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/DCSMsg$1;->val$strLogTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 56
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DCSMsg$1;->this$0:Lcom/android/server/DCSMsg;

    # getter for: Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DCSMsg;->access$000(Lcom/android/server/DCSMsg;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 59
    .local v3, "nSplitIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DCSMsg$1;->this$0:Lcom/android/server/DCSMsg;

    # getter for: Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DCSMsg;->access$000(Lcom/android/server/DCSMsg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-le v4, v5, :cond_0

    .line 60
    const-string v4, "DCSMsgTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendDCSMsg mDcsMsg format is wrong, mDcsMsg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DCSMsg$1;->this$0:Lcom/android/server/DCSMsg;

    # getter for: Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/DCSMsg;->access$000(Lcom/android/server/DCSMsg;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v3    # "nSplitIndex":I
    :goto_0
    return-void

    .line 64
    .restart local v3    # "nSplitIndex":I
    :cond_0
    const-string v4, "HungTaskModule"

    iget-object v5, p0, Lcom/android/server/DCSMsg$1;->this$0:Lcom/android/server/DCSMsg;

    # getter for: Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/DCSMsg;->access$000(Lcom/android/server/DCSMsg;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v4, "HungTaskMsg"

    iget-object v5, p0, Lcom/android/server/DCSMsg$1;->this$0:Lcom/android/server/DCSMsg;

    # getter for: Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/DCSMsg;->access$000(Lcom/android/server/DCSMsg;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v5, "isReleaseVersion"

    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/CheckBlockedException;->isReleaseVersion()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    :goto_1
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v3    # "nSplitIndex":I
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.nearme.statistics.rom"

    const-string v6, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const-string v4, "appPackage"

    const-string v5, "system"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v4, "appName"

    const-string v5, "system"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v4, "appVersion"

    const-string v5, "system"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v4, "ssoid"

    const-string v5, "system"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v4, "appId"

    const/16 v5, 0x4e98

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v4, "eventID"

    iget-object v5, p0, Lcom/android/server/DCSMsg$1;->val$strEventID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v4, "uploadNow"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v4, "logTag"

    iget-object v5, p0, Lcom/android/server/DCSMsg$1;->val$strLogTag:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v4, "logMap"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v4, "dataType"

    const/16 v5, 0x3ee

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v4, "DCSMsgTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendDCSMsg jsonObject.toString():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/CheckBlockedException;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 68
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "nSplitIndex":I
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 69
    .end local v3    # "nSplitIndex":I
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method
