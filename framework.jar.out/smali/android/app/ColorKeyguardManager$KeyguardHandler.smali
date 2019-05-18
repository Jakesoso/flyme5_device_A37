.class Landroid/app/ColorKeyguardManager$KeyguardHandler;
.super Landroid/os/Handler;
.source "ColorKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ColorKeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ColorKeyguardManager;


# direct methods
.method public constructor <init>(Landroid/app/ColorKeyguardManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/app/ColorKeyguardManager$KeyguardHandler;->this$0:Landroid/app/ColorKeyguardManager;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v1, p0, Landroid/app/ColorKeyguardManager$KeyguardHandler;->this$0:Landroid/app/ColorKeyguardManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Landroid/app/ColorKeyguardManager;->handleCommand(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/app/ColorKeyguardManager;->access$300(Landroid/app/ColorKeyguardManager;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
