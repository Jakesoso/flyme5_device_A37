.class Lcom/android/server/am/OppoBootCompleteBroadcast$1;
.super Ljava/lang/Object;
.source "OppoBootCompleteBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoBootCompleteBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoBootCompleteBroadcast;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    # operator++ for: Lcom/android/server/am/OppoBootCompleteBroadcast;->mIdleCheckCount:I
    invoke-static {v1}, Lcom/android/server/am/OppoBootCompleteBroadcast;->access$008(Lcom/android/server/am/OppoBootCompleteBroadcast;)I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "sendOppoBtBroadcast":Z
    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    # invokes: Lcom/android/server/am/OppoBootCompleteBroadcast;->isSystemIdle()Z
    invoke-static {v1}, Lcom/android/server/am/OppoBootCompleteBroadcast;->access$100(Lcom/android/server/am/OppoBootCompleteBroadcast;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 92
    :goto_0
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    # invokes: Lcom/android/server/am/OppoBootCompleteBroadcast;->sendOppoBootCompleteBroadcast()V
    invoke-static {v1}, Lcom/android/server/am/OppoBootCompleteBroadcast;->access$300(Lcom/android/server/am/OppoBootCompleteBroadcast;)V

    .line 96
    :cond_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    # getter for: Lcom/android/server/am/OppoBootCompleteBroadcast;->mIdleCheckCount:I
    invoke-static {v1}, Lcom/android/server/am/OppoBootCompleteBroadcast;->access$000(Lcom/android/server/am/OppoBootCompleteBroadcast;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;->this$0:Lcom/android/server/am/OppoBootCompleteBroadcast;

    const v2, 0x9c40

    # invokes: Lcom/android/server/am/OppoBootCompleteBroadcast;->postCheckIdleCallBack(I)V
    invoke-static {v1, v2}, Lcom/android/server/am/OppoBootCompleteBroadcast;->access$200(Lcom/android/server/am/OppoBootCompleteBroadcast;I)V

    goto :goto_0
.end method
