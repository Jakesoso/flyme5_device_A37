.class final Lcom/android/server/coloros/OppoSysStateManager$LocalService;
.super Lcom/android/server/coloros/OppoSysStateManagerInternal;
.source "OppoSysStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coloros/OppoSysStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/coloros/OppoSysStateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/coloros/OppoSysStateManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    invoke-direct {p0}, Lcom/android/server/coloros/OppoSysStateManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/coloros/OppoSysStateManager;Lcom/android/server/coloros/OppoSysStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/coloros/OppoSysStateManager;
    .param p2, "x1"    # Lcom/android/server/coloros/OppoSysStateManager$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/coloros/OppoSysStateManager$LocalService;-><init>(Lcom/android/server/coloros/OppoSysStateManager;)V

    return-void
.end method


# virtual methods
.method public onPlugChanged(I)V
    .locals 4
    .param p1, "plugType"    # I

    .prologue
    .line 99
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 100
    .local v0, "isCharging":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v1, v1, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iput-boolean v0, v1, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    .line 102
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    # invokes: Lcom/android/server/coloros/OppoSysStateManager;->judgeRestrictStartupBg()V
    invoke-static {v1}, Lcom/android/server/coloros/OppoSysStateManager;->access$100(Lcom/android/server/coloros/OppoSysStateManager;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    # getter for: Lcom/android/server/coloros/OppoSysStateManager;->DEBUG:Z
    invoke-static {v1}, Lcom/android/server/coloros/OppoSysStateManager;->access$200(Lcom/android/server/coloros/OppoSysStateManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "OppoSysStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlugChanged: plugType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v3, v3, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsCharging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v3, v3, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRestrictStartupBg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v3, v3, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void

    .line 99
    .end local v0    # "isCharging":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWakefulnessChanged(I)V
    .locals 4
    .param p1, "wakefulness"    # I

    .prologue
    .line 82
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 83
    .local v0, "isScreenOn":Z
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v1, v1, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    if-eq v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iput-boolean v0, v1, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    .line 85
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    # invokes: Lcom/android/server/coloros/OppoSysStateManager;->judgeRestrictStartupBg()V
    invoke-static {v1}, Lcom/android/server/coloros/OppoSysStateManager;->access$100(Lcom/android/server/coloros/OppoSysStateManager;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    # getter for: Lcom/android/server/coloros/OppoSysStateManager;->DEBUG:Z
    invoke-static {v1}, Lcom/android/server/coloros/OppoSysStateManager;->access$200(Lcom/android/server/coloros/OppoSysStateManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "OppoSysStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakefulnessChanged: wakefulness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v3, v3, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsCharging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v3, v3, Lcom/android/server/coloros/OppoSysStateManager;->mIsCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRestrictStartupBg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v3, v3, Lcom/android/server/coloros/OppoSysStateManager;->mRestrictStartupBg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/coloros/OppoSysStateManager$LocalService;->this$0:Lcom/android/server/coloros/OppoSysStateManager;

    iget-boolean v2, v2, Lcom/android/server/coloros/OppoSysStateManager;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Lcom/android/server/am/OppoAbnormalAppManager;->updateScreenStatus(Z)V

    .line 95
    :cond_1
    return-void
.end method
