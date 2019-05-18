.class public final Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;
.super Lcom/android/internal/telephony/gsm/GsmCallTracker;
.source "OppoGsmCallTracker.java"


# instance fields
.field private blockingNumer:Ljava/lang/String;

.field private pollMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 64
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private localblockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V
    .locals 5
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "vExitBlackList":Z
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_1

    .line 99
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 101
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->isOemBlackList(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v1

    .line 106
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 107
    iget v0, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 108
    .local v0, "idx":I
    if-lez v0, :cond_3

    const/4 v2, 0x7

    if-ge v0, v2, :cond_3

    .line 109
    sget-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v2, :cond_2

    const-string v2, "oppo block the incoming and hangup it!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 120
    .end local v0    # "idx":I
    :cond_3
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 121
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 122
    return-void

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 115
    sget-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v2, :cond_5

    const-string v2, "oppo accept the incoming call!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 116
    :cond_5
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private oppohandlePollCalls(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 129
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_3

    .line 130
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 139
    .local v8, "polledCalls":Ljava/util/List;
    const/4 v7, 0x0

    .line 141
    .local v7, "newRinging":Lcom/android/internal/telephony/DriverCall;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v2, 0x0

    .local v2, "curDC":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "dcSize":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v9, v9

    if-ge v5, v9, :cond_b

    .line 142
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v9, v5

    .line 143
    .local v1, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v3, 0x0

    .line 145
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v2, v4, :cond_0

    .line 146
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 147
    .restart local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    iget v9, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v10, v5, 0x1

    if-ne v9, v10, :cond_6

    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 154
    :cond_0
    :goto_1
    sget-boolean v9, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "poll: conn[i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 156
    :cond_1
    if-nez v1, :cond_9

    if-eqz v3, :cond_9

    .line 157
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 141
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2    # "curDC":I
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v4    # "dcSize":I
    .end local v5    # "i":I
    .end local v7    # "newRinging":Lcom/android/internal/telephony/DriverCall;
    .end local v8    # "polledCalls":Ljava/util/List;
    :cond_3
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 185
    :cond_4
    :goto_3
    return-void

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 150
    .restart local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v2    # "curDC":I
    .restart local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v4    # "dcSize":I
    .restart local v5    # "i":I
    .restart local v7    # "newRinging":Lcom/android/internal/telephony/DriverCall;
    .restart local v8    # "polledCalls":Ljava/util/List;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 160
    :cond_7
    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v9, v10, :cond_8

    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v9, v10, :cond_2

    .line 161
    :cond_8
    move-object v7, v3

    goto :goto_2

    .line 164
    :cond_9
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 166
    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v9, v10, :cond_a

    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v9, v10, :cond_2

    .line 167
    :cond_a
    move-object v7, v3

    goto :goto_2

    .line 172
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_b
    if-eqz v7, :cond_d

    .line 173
    const/4 v6, 0x0

    .line 174
    .local v6, "isBlockedNumber":Z
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 175
    const/4 v6, 0x1

    .line 177
    :cond_c
    if-nez v6, :cond_4

    .line 178
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->localblockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V

    goto :goto_3

    .line 184
    .end local v6    # "isBlockedNumber":Z
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_1

    .line 74
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_0

    .line 81
    sget-boolean v0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v0, :cond_2

    const-string v0, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 82
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mNeedsPoll:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->oppohandlePollCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
