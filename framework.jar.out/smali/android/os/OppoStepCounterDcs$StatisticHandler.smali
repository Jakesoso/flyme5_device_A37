.class Landroid/os/OppoStepCounterDcs$StatisticHandler;
.super Landroid/os/Handler;
.source "OppoStepCounterDcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OppoStepCounterDcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StatisticHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 138
    :pswitch_0
    sget v7, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 139
    const-string v7, "OppoStepCounterDcs"

    const-string/jumbo v8, "init wechat setpcounter"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v4, "eventStart":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "EVENT_WECHAT_SPORT"

    const-string v8, "START"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 143
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v7, "stepCounter_statistic"

    const-string v8, "WECHAT_SPORT"

    invoke-static {v1, v7, v8, v4, v10}, Landroid/os/OppoStepCounterDcs;->sendDCSMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 153
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "eventStart":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    sput v10, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    goto :goto_0

    .line 144
    :cond_0
    sget v7, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 145
    const-string v7, "OppoStepCounterDcs"

    const-string/jumbo v8, "read wechat setpcounter"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v2, "eventRead":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "EVENT_WECHAT_SPORT"

    const-string v8, "READ"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 149
    .restart local v1    # "context":Landroid/content/Context;
    const-string/jumbo v7, "stepCounter_statistic"

    const-string v8, "WECHAT_SPORT"

    invoke-static {v1, v7, v8, v2, v10}, Landroid/os/OppoStepCounterDcs;->sendDCSMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1

    .line 151
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "eventRead":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v7, "OppoStepCounterDcs"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSetpcounterWechatReg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unknow msg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    .line 158
    .local v5, "objs":[Ljava/lang/Object;
    const-string v8, "OppoStepCounterDcs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v7, v5, v11

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    aget-object v7, v5, v10

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 161
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    aget-object v7, v5, v11

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/os/OppoStepCounterDcs;->getAppName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "appName":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v3, "eventReg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "EVENT_STEPCOUNTER_REG"

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    aget-object v7, v5, v10

    check-cast v7, Landroid/content/Context;

    const-string/jumbo v8, "stepCounter_statistic"

    const-string v9, "STEPCOUNTER_REG"

    invoke-static {v7, v8, v9, v3, v10}, Landroid/os/OppoStepCounterDcs;->sendDCSMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
