.class Lcom/color/sau/SauAlertManager$1;
.super Ljava/lang/Object;
.source "SauAlertManager.java"

# interfaces
.implements Lcom/color/sau/ISauUpgradeDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/sau/SauAlertManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/sau/SauAlertManager;


# direct methods
.method constructor <init>(Lcom/color/sau/SauAlertManager;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitUpgrade()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "SauJar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/color/sau/SauAlertManager;->access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit upgrade!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # invokes: Lcom/color/sau/SauAlertManager;->killMySelf()V
    invoke-static {v0}, Lcom/color/sau/SauAlertManager;->access$100(Lcom/color/sau/SauAlertManager;)V

    .line 123
    return-void
.end method

.method public installNow()V
    .locals 5

    .prologue
    .line 128
    const-string v2, "SauJar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install Button clicked. install "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/color/sau/SauAlertManager;->access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "now!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.SAU_APP_JAR_UPGRADE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    iget-object v3, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/color/sau/SauAlertManager;->access$200(Lcom/color/sau/SauAlertManager;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/color/sau/SauAlertManager;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v2, v3, v1}, Lcom/color/sau/SauAlertManager;->access$300(Lcom/color/sau/SauAlertManager;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "installIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 132
    const-string v2, "type"

    const-string v3, "appJar"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v2, "pkgName"

    iget-object v3, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/color/sau/SauAlertManager;->access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/color/sau/SauAlertManager;->access$200(Lcom/color/sau/SauAlertManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    :cond_0
    return-void
.end method

.method public upgradeLater()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "SauJar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/color/sau/SauAlertManager;->access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " upgrade later!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public upgradeNow()V
    .locals 5

    .prologue
    .line 142
    const-string v2, "SauJar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrade Button clicked. Download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/color/sau/SauAlertManager;->access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "now!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.SAU_APP_JAR_UPGRADE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    iget-object v3, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/color/sau/SauAlertManager;->access$200(Lcom/color/sau/SauAlertManager;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/color/sau/SauAlertManager;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v2, v3, v1}, Lcom/color/sau/SauAlertManager;->access$300(Lcom/color/sau/SauAlertManager;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "downloadIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 146
    const-string v2, "type"

    const-string v3, "appJar"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v2, "pkgName"

    iget-object v3, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mPkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/color/sau/SauAlertManager;->access$000(Lcom/color/sau/SauAlertManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/color/sau/SauAlertManager;->access$200(Lcom/color/sau/SauAlertManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mCanUseOld:Z
    invoke-static {v2}, Lcom/color/sau/SauAlertManager;->access$400(Lcom/color/sau/SauAlertManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    new-instance v3, Lcom/color/sau/SauWaitProgressDialog;

    iget-object v4, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/color/sau/SauAlertManager;->access$200(Lcom/color/sau/SauAlertManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/color/sau/SauWaitProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/color/sau/SauAlertManager;->mProgressDialog:Lcom/color/sau/SauWaitProgressDialog;
    invoke-static {v2, v3}, Lcom/color/sau/SauAlertManager;->access$502(Lcom/color/sau/SauAlertManager;Lcom/color/sau/SauWaitProgressDialog;)Lcom/color/sau/SauWaitProgressDialog;

    .line 153
    iget-object v2, p0, Lcom/color/sau/SauAlertManager$1;->this$0:Lcom/color/sau/SauAlertManager;

    # getter for: Lcom/color/sau/SauAlertManager;->mProgressDialog:Lcom/color/sau/SauWaitProgressDialog;
    invoke-static {v2}, Lcom/color/sau/SauAlertManager;->access$500(Lcom/color/sau/SauAlertManager;)Lcom/color/sau/SauWaitProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/color/sau/SauWaitProgressDialog;->show()V

    .line 155
    :cond_1
    return-void
.end method
