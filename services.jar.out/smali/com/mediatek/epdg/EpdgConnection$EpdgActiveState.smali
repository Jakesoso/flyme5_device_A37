.class Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1182
    const/4 v1, 0x1

    .line 1184
    .local v1, "retVal":Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1204
    const/4 v1, 0x0

    .line 1207
    :goto_0
    return v1

    .line 1186
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-string v3, "Activate. Do nothing"

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2400(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v4}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1191
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    invoke-static {v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1800(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2500(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1195
    :sswitch_2
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_1
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->disconnect()V
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$2000(Lcom/mediatek/epdg/EpdgConnection;)V

    .line 1201
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;
    invoke-static {v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-string v3, "interrupted"

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2600(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    goto :goto_1

    .line 1184
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x14 -> :sswitch_3
    .end sparse-switch
.end method
