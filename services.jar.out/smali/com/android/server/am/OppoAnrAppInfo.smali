.class public Lcom/android/server/am/OppoAnrAppInfo;
.super Ljava/lang/Object;
.source "OppoAnrAppInfo.java"


# instance fields
.field isGuardTimeout:Z

.field mBroadcastName:Ljava/lang/String;

.field mBroadcastReceiverTime:J

.field mBroadcastType:Ljava/lang/String;

.field mCount:I

.field mCpu:J

.field mForeground:Z

.field mPid:I

.field mPkgName:Ljava/lang/String;

.field mProcessName:Ljava/lang/String;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mProcessName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mPkgName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mCount:I

    .line 44
    return-void
.end method


# virtual methods
.method public broadcastToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 115
    const-string v2, ""

    .line 116
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/android/server/am/OppoAnrAppInfo;->mForeground:Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoAnrAppInfo;->isFg(Z)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "isFg":Ljava/lang/String;
    const-string v3, "[broadcast "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->isGuardTimeout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastReceiverTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cpu:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mCpu:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    return-object v2
.end method

.method public getBroadcastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastName:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastReceiverTime()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastReceiverTime:J

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mCount:I

    return v0
.end method

.method public getForeground()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mForeground:Z

    return v0
.end method

.method public getGuardTimeout()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->isGuardTimeout:Z

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/am/OppoAnrAppInfo;->mUid:I

    return v0
.end method

.method public isFg(Z)Ljava/lang/String;
    .locals 1
    .param p1, "foreground"    # Z

    .prologue
    .line 183
    const-string v0, ""

    .line 184
    .local v0, "fg":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 185
    const-string v0, "FG"

    .line 189
    :goto_0
    return-object v0

    .line 187
    :cond_0
    const-string v0, "BG"

    goto :goto_0
.end method

.method public serviceToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    const-string v2, ""

    .line 140
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/android/server/am/OppoAnrAppInfo;->mForeground:Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoAnrAppInfo;->isFg(Z)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "isFg":Ljava/lang/String;
    const-string v3, "[service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->isGuardTimeout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastReceiverTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cpu:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mCpu:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    return-object v2
.end method

.method public setBroadcastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setBroadcastReceiverTime(J)V
    .locals 1
    .param p1, "receiverTime"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastReceiverTime:J

    .line 60
    return-void
.end method

.method public setBroadcastType(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mCount:I

    .line 104
    return-void
.end method

.method public setForeground(Z)V
    .locals 0
    .param p1, "fg"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mForeground:Z

    .line 112
    return-void
.end method

.method public setGuardTimeout(Z)V
    .locals 0
    .param p1, "timeout"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->isGuardTimeout:Z

    .line 80
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mPid:I

    .line 88
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mPkgName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mProcessName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/server/am/OppoAnrAppInfo;->mUid:I

    .line 96
    return-void
.end method

.method public topBroadcastToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    const-string v2, ""

    .line 160
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/android/server/am/OppoAnrAppInfo;->mForeground:Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoAnrAppInfo;->isFg(Z)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "isFg":Ljava/lang/String;
    const-string v3, "[top "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mBroadcastType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/OppoAnrAppInfo;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    return-object v2
.end method
