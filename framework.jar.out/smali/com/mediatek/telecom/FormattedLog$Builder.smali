.class public Lcom/mediatek/telecom/FormattedLog$Builder;
.super Ljava/lang/Object;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/FormattedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mExtraMessage:Ljava/lang/StringBuilder;

.field private mOpType:Lcom/mediatek/telecom/FormattedLog$OpType;

.field private mServiceName:Ljava/lang/String;

.field private mStatusInfo:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method


# virtual methods
.method public declared-synchronized appendExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-object p0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;
    .locals 5

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 250
    :cond_0
    new-instance v0, Lcom/mediatek/telecom/FormattedLog;

    const-string v1, "[Debug][%s][%s][%s][%s][%s][%s] %s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mOpType:Lcom/mediatek/telecom/FormattedLog$OpType;

    # invokes: Lcom/mediatek/telecom/FormattedLog;->opTypeToString(Lcom/mediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/telecom/FormattedLog;->access$000(Lcom/mediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mAction:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mediatek/telecom/FormattedLog$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildDumpInfo()Lcom/mediatek/telecom/FormattedLog;
    .locals 8

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v2, "statusInfo":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 265
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "statusInfo":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 280
    .restart local v1    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "statusInfo":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 281
    const-string/jumbo v3, "unknown"

    iput-object v3, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 284
    :cond_2
    new-instance v3, Lcom/mediatek/telecom/FormattedLog;

    const-string v4, "[Debug][%s][%s][Dump][%s][%s]-%s-%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v2, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mediatek/telecom/FormattedLog$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized resetStatusInfo(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    monitor-exit p0

    return-object p0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mAction:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    const-string v0, "conferenceCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 165
    :goto_0
    return-object p0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public declared-synchronized setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 218
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    monitor-exit p0

    return-object p0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 0
    .param p1, "type"    # Lcom/mediatek/telecom/FormattedLog$OpType;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mOpType:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 136
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public declared-synchronized setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit p0

    return-object p0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
