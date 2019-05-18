.class final Landroid/os/OppoStepCounterDcs$1;
.super Ljava/lang/Object;
.source "OppoStepCounterDcs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/OppoStepCounterDcs;->sendDCSMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$logMap:Ljava/util/Map;

.field final synthetic val$logTag:Ljava/lang/String;

.field final synthetic val$upLoadNow:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Landroid/os/OppoStepCounterDcs$1;->val$logMap:Ljava/util/Map;

    iput-object p2, p0, Landroid/os/OppoStepCounterDcs$1;->val$eventId:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/os/OppoStepCounterDcs$1;->val$upLoadNow:Z

    iput-object p4, p0, Landroid/os/OppoStepCounterDcs$1;->val$logTag:Ljava/lang/String;

    iput-object p5, p0, Landroid/os/OppoStepCounterDcs$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 72
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Landroid/os/OppoStepCounterDcs$1;->val$logMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/os/OppoStepCounterDcs$1;->val$logMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    :try_start_0
    iget-object v5, p0, Landroid/os/OppoStepCounterDcs$1;->val$logMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/os/OppoStepCounterDcs$1;->val$logMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.nearme.statistics.rom"

    const-string v7, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    const-string v5, "appPackage"

    const-string/jumbo v6, "system"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v5, "appName"

    const-string/jumbo v6, "system"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v5, "appVersion"

    const-string/jumbo v6, "system"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v5, "ssoid"

    const-string/jumbo v6, "system"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v5, "appId"

    # getter for: Landroid/os/OppoStepCounterDcs;->appId:I
    invoke-static {}, Landroid/os/OppoStepCounterDcs;->access$000()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v5, "eventID"

    iget-object v6, p0, Landroid/os/OppoStepCounterDcs$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v5, "uploadNow"

    iget-boolean v6, p0, Landroid/os/OppoStepCounterDcs$1;->val$upLoadNow:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string/jumbo v5, "logTag"

    iget-object v6, p0, Landroid/os/OppoStepCounterDcs$1;->val$logTag:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v5, "logMap"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v5, "dataType"

    const/16 v6, 0x3ee

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v5, p0, Landroid/os/OppoStepCounterDcs$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    return-void
.end method
