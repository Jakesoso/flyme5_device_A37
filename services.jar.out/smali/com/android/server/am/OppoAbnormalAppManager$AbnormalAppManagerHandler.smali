.class Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;
.super Landroid/os/Handler;
.source "OppoAbnormalAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoAbnormalAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbnormalAppManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoAbnormalAppManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OppoAbnormalAppManager;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OppoAbnormalAppManager;Lcom/android/server/am/OppoAbnormalAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/OppoAbnormalAppManager;
    .param p2, "x1"    # Lcom/android/server/am/OppoAbnormalAppManager$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;-><init>(Lcom/android/server/am/OppoAbnormalAppManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-object v1, v1, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastTimeList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-object v2, v2, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastTimeInfo:Ljava/util/ArrayList;

    const-string v3, "BroadcastTime"

    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-wide v4, v4, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckBroadcastTime:J

    const/16 v6, 0x65

    # invokes: Lcom/android/server/am/OppoAbnormalAppManager;->sendTimeBroadcast(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/OppoAbnormalAppManager;->access$000(Lcom/android/server/am/OppoAbnormalAppManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-object v1, v1, Lcom/android/server/am/OppoAbnormalAppManager;->mServiceTimeList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-object v2, v2, Lcom/android/server/am/OppoAbnormalAppManager;->mServiceTimeInfo:Ljava/util/ArrayList;

    const-string v3, "ServicesTime"

    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    iget-wide v4, v4, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckServiceTime:J

    const/16 v6, 0x66

    # invokes: Lcom/android/server/am/OppoAbnormalAppManager;->sendTimeBroadcast(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/OppoAbnormalAppManager;->access$000(Lcom/android/server/am/OppoAbnormalAppManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    # invokes: Lcom/android/server/am/OppoAbnormalAppManager;->sendTopBroadcast()V
    invoke-static {v0}, Lcom/android/server/am/OppoAbnormalAppManager;->access$100(Lcom/android/server/am/OppoAbnormalAppManager;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
