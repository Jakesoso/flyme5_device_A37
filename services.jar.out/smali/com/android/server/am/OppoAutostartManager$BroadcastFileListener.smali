.class public Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;
.super Landroid/os/FileObserver;
.source "OppoAutostartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoAutostartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BroadcastFileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoAutostartManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoAutostartManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;->this$0:Lcom/android/server/am/OppoAutostartManager;

    .line 362
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 363
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 367
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;->this$0:Lcom/android/server/am/OppoAutostartManager;

    # invokes: Lcom/android/server/am/OppoAutostartManager;->readBroadcastFilter()V
    invoke-static {v0}, Lcom/android/server/am/OppoAutostartManager;->access$200(Lcom/android/server/am/OppoAutostartManager;)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
