.class Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldMode;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v3, "[Receiver]+"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 167
    const/4 v2, -0x1

    .line 169
    .local v2, "wmState":I
    const-string v3, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const-string v3, "worldModeState"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wmState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 174
    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$200()I

    move-result v3

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$102(I)I

    .line 187
    :cond_0
    :goto_0
    const-string v3, "[Receiver]-"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 188
    return-void

    .line 176
    :cond_1
    const-string v3, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "worldMode"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "toMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toModem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 180
    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 184
    :cond_2
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(I)V

    goto :goto_0
.end method
