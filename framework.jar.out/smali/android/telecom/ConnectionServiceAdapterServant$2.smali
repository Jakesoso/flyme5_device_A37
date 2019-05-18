.class Landroid/telecom/ConnectionServiceAdapterServant$2;
.super Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 389
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 390
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 391
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 393
    return-void
.end method

.method public final addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 479
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 480
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 481
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 482
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 483
    return-void
.end method

.method public handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "conference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 567
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 568
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 569
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 570
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 571
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 572
    return-void
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 330
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 331
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 332
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 333
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 335
    return-void
.end method

.method public notifyAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 536
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 537
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 538
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void
.end method

.method public notifyActionFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 493
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 494
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 495
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method public notifyCdmaCallAccepted(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void
.end method

.method public notifyConnectionLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 489
    return-void
.end method

.method public notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "alphaid"    # Ljava/lang/String;
    .param p4, "cli_validity"    # I

    .prologue
    .line 521
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 522
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 523
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 524
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 525
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 527
    return-void
.end method

.method public notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 514
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 515
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 517
    return-void
.end method

.method public notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "notiType"    # I
    .param p3, "type"    # I
    .param p4, "code"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 501
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 502
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 503
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 504
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 505
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 506
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 507
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 509
    return-void
.end method

.method public notifyVtStatusInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 545
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 546
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 547
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 548
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 549
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 410
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 411
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 412
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 413
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 414
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 403
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 404
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 418
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method public final setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 450
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 451
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 452
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 453
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 454
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 455
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 460
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 461
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 462
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 463
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 464
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 465
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 471
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 472
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 474
    return-void
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 374
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    return-void
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 355
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 356
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 357
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 359
    return-void
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 382
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 383
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void
.end method

.method public final setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void

    :cond_0
    move v0, v1

    .line 436
    goto :goto_0
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    return-void
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 370
    return-void

    :cond_0
    move v0, v1

    .line 368
    goto :goto_0
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    return-void
.end method

.method public final setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 442
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 443
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 444
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 446
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 428
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 429
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 430
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 432
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 423
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 424
    return-void
.end method

.method public updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 556
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 557
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 558
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    # getter for: Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->access$100(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 560
    return-void
.end method
