.class public Lcom/android/server/SystemBinderBlockStateWatch;
.super Lcom/android/server/StateWatch;
.source "SystemBinderBlockStateWatch.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SystemBinderBlockStateWatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/server/StateWatch;-><init>()V

    return-void
.end method


# virtual methods
.method dealAction()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v0

    const-string v1, "Systemserver,AllBinderThreadBlocked"

    invoke-virtual {v0, v1}, Lcom/android/server/CheckBlockedException;->WriteLastExceptionMsgToProc(Ljava/lang/String;)V

    .line 57
    const-string v0, "SystemBinderBlockStateWatch"

    const-string v1, "SystemBinderBlockStateWatch kill systemserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    invoke-static {}, Lcom/android/server/CheckBlockedException;->rebootSystemServer()V

    .line 59
    return-void
.end method

.method getCheckCount()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x258

    return v0
.end method

.method getCheckInterval()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x64

    return v0
.end method

.method isStateOk()Z
    .locals 8

    .prologue
    .line 13
    const/4 v0, 0x1

    .line 14
    .local v0, "bBinderOk":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    .line 15
    .local v2, "currentGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    .line 16
    .local v1, "count":I
    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v1

    new-array v5, v6, [Ljava/lang/Thread;

    .line 17
    .local v5, "threads":[Ljava/lang/Thread;
    invoke-virtual {v2, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 18
    const/4 v4, 0x0

    .line 20
    .local v4, "nBlockBinderThread":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 21
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Binder_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_1
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    sget-object v7, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v6, v7, :cond_2

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    sget-object v7, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v6, v7, :cond_3

    .line 28
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 34
    const/16 v6, 0x10

    if-ne v4, v6, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 42
    :cond_3
    return v0
.end method
