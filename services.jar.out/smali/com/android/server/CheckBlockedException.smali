.class public Lcom/android/server/CheckBlockedException;
.super Ljava/lang/Object;
.source "CheckBlockedException.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckBlockedException"

.field private static sCheckBlcokExp:Lcom/android/server/CheckBlockedException;


# instance fields
.field private mBootComplete:Z

.field private mContext:Landroid/content/Context;

.field private mDebugHungtask:Z

.field private final mLastExceptionProc:Ljava/lang/String;

.field private final mLastExceptionProperty:Ljava/lang/String;

.field private mReleaseVersion:Z

.field private threadCheckBlockedExceptionThread:Landroid/os/HandlerThread;

.field private valueWatchArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StateWatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/CheckBlockedException;->valueWatchArray:Ljava/util/ArrayList;

    .line 28
    iput-boolean v2, p0, Lcom/android/server/CheckBlockedException;->mReleaseVersion:Z

    .line 29
    iput-boolean v2, p0, Lcom/android/server/CheckBlockedException;->mBootComplete:Z

    .line 30
    const-string v0, "/proc/sys/kernel/hung_task_oppo_kill"

    iput-object v0, p0, Lcom/android/server/CheckBlockedException;->mLastExceptionProc:Ljava/lang/String;

    .line 31
    const-string v0, "persist.hungtask.oppo.kill"

    iput-object v0, p0, Lcom/android/server/CheckBlockedException;->mLastExceptionProperty:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lcom/android/server/CheckBlockedException;->mDebugHungtask:Z

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CheckBlockedExceptionThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/CheckBlockedException;->threadCheckBlockedExceptionThread:Landroid/os/HandlerThread;

    .line 37
    iget-object v0, p0, Lcom/android/server/CheckBlockedException;->threadCheckBlockedExceptionThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    const-string v0, "ro.build.release_type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mReleaseVersion:Z

    .line 39
    const-string v0, "persist.debug.hungtask"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mDebugHungtask:Z

    .line 40
    return-void
.end method

.method private CheckLastRebootExceptionMsgFromProc()V
    .locals 8

    .prologue
    .line 109
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/sys/kernel/hung_task_oppo_kill"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 115
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/sys/kernel/hung_task_oppo_kill"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "strSend":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    const-string v4, "CheckBlockedException"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckLastRebootExceptionMsgFromProc strSend:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/CheckBlockedException;->getCheckLoop()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/server/CheckBlockedException$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/CheckBlockedException$1;-><init>(Lcom/android/server/CheckBlockedException;Ljava/lang/String;)V

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v1, v2

    .line 131
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 129
    .end local v3    # "strSend":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private CheckLastRebootExceptionMsgFromProperty()V
    .locals 6

    .prologue
    .line 151
    const-string v1, "persist.hungtask.oppo.kill"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "strSend":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "CheckBlockedException"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckLastRebootExceptionMsgFromProperty strSend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/CheckBlockedException;->getCheckLoop()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/CheckBlockedException$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/CheckBlockedException$2;-><init>(Lcom/android/server/CheckBlockedException;Ljava/lang/String;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/CheckBlockedException;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/CheckBlockedException;->sCheckBlcokExp:Lcom/android/server/CheckBlockedException;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/server/CheckBlockedException;

    invoke-direct {v0}, Lcom/android/server/CheckBlockedException;-><init>()V

    sput-object v0, Lcom/android/server/CheckBlockedException;->sCheckBlcokExp:Lcom/android/server/CheckBlockedException;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/server/CheckBlockedException;->sCheckBlcokExp:Lcom/android/server/CheckBlockedException;

    return-object v0
.end method

.method public static rebootSystemServer()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "CheckBlockedException"

    const-string v1, "rebootSystemServer, we kill it\'s parent zygote"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 166
    return-void
.end method


# virtual methods
.method public WriteLastExceptionMsgToProc(Ljava/lang/String;)V
    .locals 6
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/proc/sys/kernel/hung_task_oppo_kill"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 139
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 143
    :cond_0
    const-string v3, "CheckBlockedException"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WriteLastExceptionMsgToProc strMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 147
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public addStateWatch(Lcom/android/server/StateWatch;)V
    .locals 1
    .param p1, "watch"    # Lcom/android/server/StateWatch;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/CheckBlockedException;->valueWatchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public getCheckLoop()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/CheckBlockedException;->threadCheckBlockedExceptionThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/CheckBlockedException;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method isBootComplete()Z
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mBootComplete:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 97
    :cond_0
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mBootComplete:Z

    .line 99
    iget-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mBootComplete:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/server/CheckBlockedException;->CheckLastRebootExceptionMsgFromProc()V

    .line 101
    invoke-direct {p0}, Lcom/android/server/CheckBlockedException;->CheckLastRebootExceptionMsgFromProperty()V

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mBootComplete:Z

    goto :goto_0
.end method

.method isDectectEnabled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mReleaseVersion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mDebugHungtask:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleaseVersion()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/server/CheckBlockedException;->mReleaseVersion:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/CheckBlockedException;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/android/server/CheckBlockedException;->mContext:Landroid/content/Context;

    .line 79
    :cond_0
    return-void
.end method

.method triggerDetect()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/server/CheckBlockedException;->isDectectEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/server/CheckBlockedException;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/CheckBlockedException;->isBootComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/server/CheckBlockedException;->valueWatchArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StateWatch;

    .line 59
    .local v1, "watch":Lcom/android/server/StateWatch;
    invoke-virtual {v1}, Lcom/android/server/StateWatch;->triggerDetect()V

    goto :goto_0
.end method
