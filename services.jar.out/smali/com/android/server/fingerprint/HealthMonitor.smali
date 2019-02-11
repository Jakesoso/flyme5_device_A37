.class public Lcom/android/server/fingerprint/HealthMonitor;
.super Ljava/lang/Object;
.source "HealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/HealthMonitor$1;,
        Lcom/android/server/fingerprint/HealthMonitor$MyHandler;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static final FINGERPRINTD_NATIVE_NAME:[Ljava/lang/String;

.field public static final MSG_BINDERCALL_CHECK:I


# instance fields
.field private PROP_FINGERPRINTD_BINDERCALL:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mActiveApiVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

.field private mIsFingerprintdRunning:Z

.field private mIsTestWorking:Z

.field private mLastBinderCallFingerprintdPid:I

.field private mMonitorName:Ljava/lang/String;

.field private mServiceThread:Lcom/android/server/ServiceThread;

.field private volatile mStopChecking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    const-string v0, "ro.build.release_type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/system/bin/fingerprintd"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/fingerprint/HealthMonitor;->FINGERPRINTD_NATIVE_NAME:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "monitorName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "HealthMonitor"

    iput-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "debug.bindercall.api"

    iput-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->PROP_FINGERPRINTD_BINDERCALL:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mStopChecking:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsFingerprintdRunning:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsTestWorking:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mMonitorName:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/android/server/ServiceThread;

    iget-object v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 52
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 53
    new-instance v0, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    iget-object v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;-><init>(Lcom/android/server/fingerprint/HealthMonitor;Landroid/os/Looper;Lcom/android/server/fingerprint/HealthMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mActiveApiVector:Ljava/util/Vector;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/HealthMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/HealthMonitor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private resetFingerprintd(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 136
    iput-boolean v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsFingerprintdRunning:Z

    .line 137
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mActiveApiVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 138
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->removeMessages(I)V

    .line 139
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 140
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetFingerprintd, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsTestWorking:Z

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastBinderCallFingerprintdPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mLastBinderCallFingerprintdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentBinderCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->PROP_FINGERPRINTD_BINDERCALL:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentFingerprintdPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/HealthMonitor;->getFingerprintdPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public fingerprintdSystemReady()V
    .locals 2

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const-string v1, "fingerprintdSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsFingerprintdRunning:Z

    .line 62
    return-void
.end method

.method public getFingerprintdPid()I
    .locals 8

    .prologue
    .line 145
    sget-object v5, Lcom/android/server/fingerprint/HealthMonitor;->FINGERPRINTD_NATIVE_NAME:[Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v4

    .line 146
    .local v4, "pids":[I
    if-eqz v4, :cond_1

    .line 147
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 148
    .local v3, "pid":I
    sget-boolean v5, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pid":I
    :cond_1
    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 152
    const/4 v5, 0x0

    aget v5, v4, v5

    .line 154
    :goto_1
    return v5

    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public handleFingerprintdBinderCallCheck(Ljava/lang/String;I)V
    .locals 4
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "monitoringPid"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintdBinderCallCheck apiName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/fingerprint/HealthMonitor;->getFingerprintdPid()I

    move-result v0

    .line 127
    .local v0, "currentFingerprintdPid":I
    if-ne v0, p2, :cond_0

    .line 128
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/HealthMonitor;->resetFingerprintd(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const-string v2, "fingerprintd has been died, skip killing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyFingerprintdDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-boolean v0, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const-string v1, "notifyFingerprintdDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsFingerprintdRunning:Z

    .line 67
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mActiveApiVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 68
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->removeMessages(I)V

    .line 69
    return-void
.end method

.method public start(Ljava/lang/String;J)V
    .locals 6
    .param p1, "startApiName"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    const/4 v5, 0x0

    .line 72
    sget-boolean v2, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start apiName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsFingerprintdRunning:Z

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const-string v3, "fingerprintd is restarting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/fingerprint/HealthMonitor;->mStopChecking:Z

    .line 78
    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    invoke-virtual {v2, v5, p1}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/fingerprint/HealthMonitor;->getFingerprintdPid()I

    move-result v1

    .line 80
    .local v1, "startMonitoringPid":I
    sget-boolean v2, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monitoring api = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startMonitoringPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mActiveApiVector:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 85
    iget-object v2, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stop(Ljava/lang/String;)V
    .locals 4
    .param p1, "stopApiName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 91
    sget-boolean v0, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop apiName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsFingerprintdRunning:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const-string v1, "fingerprintd is restarting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsTestWorking:Z

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mHandler:Lcom/android/server/fingerprint/HealthMonitor$MyHandler;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 102
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mStopChecking:Z

    .line 103
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->mActiveApiVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/fingerprint/HealthMonitor;->mIsTestWorking:Z

    .line 100
    sget-boolean v0, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;

    const-string v1, "kill will happen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
