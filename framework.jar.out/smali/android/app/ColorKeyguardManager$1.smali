.class Landroid/app/ColorKeyguardManager$1;
.super Landroid/app/IColorKeyguardSessionCallback$Stub;
.source "ColorKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ColorKeyguardManager;->registerKeyguardCallback(Landroid/app/ColorKeyguardManager$IKeyguardApp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ColorKeyguardManager;


# direct methods
.method constructor <init>(Landroid/app/ColorKeyguardManager;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Landroid/app/ColorKeyguardManager$1;->this$0:Landroid/app/ColorKeyguardManager;

    invoke-direct {p0}, Landroid/app/IColorKeyguardSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "ColorKeyguardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCommand, command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Landroid/app/ColorKeyguardManager$1;->this$0:Landroid/app/ColorKeyguardManager;

    # invokes: Landroid/app/ColorKeyguardManager;->isSyncCommand(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Landroid/app/ColorKeyguardManager;->access$000(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/app/ColorKeyguardManager$1;->this$0:Landroid/app/ColorKeyguardManager;

    # invokes: Landroid/app/ColorKeyguardManager;->scheduleArriveSyncCommand(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/app/ColorKeyguardManager;->access$100(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/app/ColorKeyguardManager$1;->this$0:Landroid/app/ColorKeyguardManager;

    # invokes: Landroid/app/ColorKeyguardManager;->scheduleArriveCommand(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/app/ColorKeyguardManager;->access$200(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)V

    goto :goto_0
.end method
