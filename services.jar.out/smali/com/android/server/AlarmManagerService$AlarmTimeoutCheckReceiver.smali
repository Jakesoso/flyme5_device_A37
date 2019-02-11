.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeoutCheckReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;,
        Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
    }
.end annotation


# static fields
.field private static final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR"

.field private static final ACTION_OPPO_GUARD_ELF_MONITOR_FORCESTOP:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR_FORCESTOP"

.field private static final ALARM_WAKEUP_CHECK_ACTION:Ljava/lang/String; = "android.intent.action.ALARM_WAKEUP_CHECK"

.field private static final ATAG:Ljava/lang/String; = "AlarmWakeupCheck"

.field private static final INTERVAL_WAKEUP_CHECK:J = 0xafc80L

.field private static final TIMEOUT_INTERVAL:J = 0x493e0L

.field private static final TIMEOUT_THRESHOLD:J = 0x927c0L


# instance fields
.field private final ADBG:Z

.field private final comparatorIntent:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private isSyncAlarmWakeupFrequent:Z

.field public mAcquireTime:J

.field private mAlarmTimeoutCheck:Ljava/lang/Runnable;

.field private mAlarmWakeupCheck:Ljava/lang/Runnable;

.field private mHandlerThreadTimeout:Landroid/os/HandlerThread;

.field private mHandlerTimeout:Landroid/os/Handler;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mReportFrequentAlarm:Ljava/lang/Runnable;

.field private mReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenOn:Z

.field private mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockReport:Landroid/os/PowerManager$WakeLock;

.field private mWakeupNumRecord:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field private thresholdSeriousPerWakeup:J

.field private thresholdWarningPerWakeup:J

.field private thresholdWorstPerWakeup:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2935
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2868
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    .line 2869
    iput-boolean v5, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isSyncAlarmWakeupFrequent:Z

    .line 2873
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAcquireTime:J

    .line 2875
    const-string v2, "persist.sys.assert.panic"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    .line 2889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    .line 2983
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmTimeoutCheck:Ljava/lang/Runnable;

    .line 3121
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->comparatorIntent:Ljava/util/Comparator;

    .line 3195
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeupNumRecord:Ljava/lang/Runnable;

    .line 3216
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportFrequentAlarm:Ljava/lang/Runnable;

    .line 3223
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$5;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$5;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmWakeupCheck:Ljava/lang/Runnable;

    .line 2937
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2938
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2939
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2940
    const-string v2, "android.intent.action.ALARM_WAKEUP_CHECK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2943
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2944
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "alarmCheck"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    .line 2945
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2946
    const-string v2, "alarmCheckReport"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockReport:Landroid/os/PowerManager$WakeLock;

    .line 2948
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AlarmTimeout"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerThreadTimeout:Landroid/os/HandlerThread;

    .line 2949
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerThreadTimeout:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2950
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerThreadTimeout:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    .line 2952
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ALARM_WAKEUP_CHECK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2954
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWorstPerWakeup:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->alarmTimeoutCheck()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->reportFrequentAlarmList()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->alarmWakeupCheck()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2864
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->scheduleAlarmWakeupCheck()V

    return-void
.end method

.method private addReportList(IIJJLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "numWakeup"    # I
    .param p3, "wakeupInterval"    # J
    .param p5, "totalCheckTime"    # J
    .param p7, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3008
    .local p8, "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->getFrequentAlarm(I)Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;

    move-result-object v0

    .line 3009
    .local v0, "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    if-eqz v0, :cond_0

    move v1, p2

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p8

    .line 3010
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->update(IJJLjava/util/ArrayList;)V

    .line 3016
    :goto_0
    return-void

    .line 3012
    :cond_0
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;

    .end local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;IIJJLjava/lang/String;Ljava/util/ArrayList;)V

    .line 3014
    .restart local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private alarmTimeoutCheck()V
    .locals 6

    .prologue
    .line 2958
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAcquireTime:J

    sub-long v0, v2, v4

    .line 2960
    .local v0, "hold":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2961
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v2, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_0

    .line 2962
    monitor-exit v3

    .line 2981
    :goto_0
    return-void

    .line 2965
    :cond_0
    const-wide/32 v4, 0x927c0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    .line 2966
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v2, :cond_1

    const-string v2, "AlarmWakeupCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarmTimeoutCheck release wakelock!!!  mBroadcastRefCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v5, v5, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2974
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2975
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2977
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v2, :cond_3

    const-string v2, "AlarmWakeupCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarmTimeoutCheck mWakeLock.isHeld()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private alarmWakeupCheck()V
    .locals 26

    .prologue
    .line 3134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3135
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 3136
    .local v18, "nowElapsed":J
    const/16 v17, 0x0

    .local v17, "iu":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 3137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/ArrayMap;

    .line 3138
    .local v20, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v15, 0x0

    .local v15, "ip":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v15, v3, :cond_6

    .line 3139
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3141
    .local v12, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    if-eqz v3, :cond_0

    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v4, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    if-gt v3, v4, :cond_1

    .line 3138
    :cond_0
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3145
    :cond_1
    iget-wide v0, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->wakeupCountStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v18, v22

    const-wide/16 v24, 0x3e8

    div-long v8, v22, v24

    .line 3146
    .local v8, "totalCheckTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x2

    mul-long v22, v22, v24

    cmp-long v3, v8, v22

    if-lez v3, :cond_0

    .line 3150
    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v4, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    sub-int v5, v3, v4

    .line 3151
    .local v5, "numWakeup":I
    int-to-long v0, v5

    move-wide/from16 v22, v0

    div-long v6, v8, v22

    .line 3152
    .local v6, "numSecondsPerWakeup":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWarningPerWakeup:J

    move-wide/from16 v22, v0

    cmp-long v3, v6, v22

    if-gtz v3, :cond_0

    .line 3156
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J

    move-wide/from16 v22, v0

    cmp-long v3, v6, v22

    if-gtz v3, :cond_2

    .line 3157
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v3, :cond_2

    const-string v3, "AlarmWakeupCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alarmWakeupCheck: Uid="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", pkgName:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", wakeup system every "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " seconds, when screen off!!! totalCheckTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3163
    .local v11, "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    const/16 v16, 0x0

    .local v16, "is":I
    :goto_3
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 3164
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3165
    .local v13, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    iget v4, v13, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeupWhenScreenoff:I

    sub-int v14, v3, v4

    .line 3166
    .local v14, "fsNumWakeup":I
    if-gtz v14, :cond_4

    .line 3163
    :cond_3
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 3170
    :cond_4
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;

    iget-object v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v14}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;Ljava/lang/String;I)V

    .line 3171
    .local v2, "alarmIntentRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isSyncAlarmWakeupFrequent:Z

    if-nez v3, :cond_3

    .line 3175
    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_3

    iget-object v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    const-string v4, "syncmanager.SYNC_ALARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    int-to-long v0, v14

    move-wide/from16 v22, v0

    div-long v22, v8, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J

    move-wide/from16 v24, v0

    cmp-long v3, v22, v24

    if-gtz v3, :cond_3

    .line 3178
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isSyncAlarmWakeupFrequent:Z

    .line 3179
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v3, :cond_3

    const-string v3, "AlarmWakeupCheck"

    const-string v4, "alarmWakeupCheck: isSyncAlarmWakeupFrequent set true!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3191
    .end local v2    # "alarmIntentRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
    .end local v5    # "numWakeup":I
    .end local v6    # "numSecondsPerWakeup":J
    .end local v8    # "totalCheckTime":J
    .end local v11    # "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    .end local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "fsNumWakeup":I
    .end local v15    # "ip":I
    .end local v16    # "is":I
    .end local v17    # "iu":I
    .end local v18    # "nowElapsed":J
    .end local v20    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :catchall_0
    move-exception v3

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3184
    .restart local v5    # "numWakeup":I
    .restart local v6    # "numSecondsPerWakeup":J
    .restart local v8    # "totalCheckTime":J
    .restart local v11    # "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    .restart local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v15    # "ip":I
    .restart local v16    # "is":I
    .restart local v17    # "iu":I
    .restart local v18    # "nowElapsed":J
    .restart local v20    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->comparatorIntent:Ljava/util/Comparator;

    invoke-static {v11, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3185
    iget v4, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    iget-object v10, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->addReportList(IIJJLjava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 3136
    .end local v5    # "numWakeup":I
    .end local v6    # "numSecondsPerWakeup":J
    .end local v8    # "totalCheckTime":J
    .end local v11    # "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    .end local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "is":I
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 3190
    .end local v15    # "ip":I
    .end local v20    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->reportFrequentAlarmListForceStop()V

    .line 3191
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    return-void
.end method

.method private getFrequentAlarm(I)Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 2994
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2995
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2996
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;

    .line 2997
    .local v0, "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    iget v3, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mUid:I

    if-ne p1, v3, :cond_0

    .line 3002
    .end local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    :goto_1
    return-object v0

    .line 2995
    .restart local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3002
    .end local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getReportString(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;Z)Ljava/lang/String;
    .locals 10
    .param p1, "rcd"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    .param p2, "reportIntent"    # Z

    .prologue
    .line 3019
    const-string v5, ""

    .line 3020
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3021
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "[ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mWakeupInterval:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mTotalCheckTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    if-eqz p2, :cond_1

    .line 3030
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mAlarmIntentRecordList:Ljava/util/ArrayList;

    .line 3031
    .local v0, "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3032
    .local v2, "len":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3033
    const-string v6, " Intents    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_1

    .line 3035
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;

    .line 3036
    .local v3, "record":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
    const-string v6, "{  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    iget-object v6, v3, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mIntentAction:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 3038
    const-string v6, "intent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    iget-object v6, v3, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    const-string v6, "    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    :cond_0
    iget v6, v3, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mNumWakeup:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3043
    const-string v6, " wakes  }    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3047
    .end local v0    # "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "record":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3048
    return-object v5
.end method

.method private reportFrequentAlarmList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 3052
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3053
    .local v3, "len":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3054
    .local v7, "uidListWorst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3055
    .local v5, "uidListSerious":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    .local v6, "uidListWarnning":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3058
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;

    .line 3059
    .local v0, "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    invoke-direct {p0, v0, v11}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->getReportString(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;Z)Ljava/lang/String;

    move-result-object v4

    .line 3060
    .local v4, "reportString":Ljava/lang/String;
    iget-boolean v8, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isWorst:Z

    if-ne v8, v11, :cond_1

    .line 3061
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3062
    iget-boolean v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AlarmWakeupCheck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportFrequentAlarmList: report Worst Alarm. reportString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3063
    :cond_1
    iget-boolean v8, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isSerious:Z

    if-ne v8, v11, :cond_2

    .line 3064
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3065
    iget-boolean v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AlarmWakeupCheck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportFrequentAlarmList: report Serious Alarm. reportString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3067
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3068
    iget-boolean v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AlarmWakeupCheck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportFrequentAlarmList: report Warnning Alarm. reportString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3072
    .end local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    .end local v4    # "reportString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 3073
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3074
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "data"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3075
    const-string v8, "type"

    const-string v9, "alarm_worst"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3076
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3079
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 3080
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3081
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "data"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3082
    const-string v8, "type"

    const-string v9, "alarm_serious"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3086
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 3087
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3088
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "data"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3089
    const-string v8, "type"

    const-string v9, "alarm_warnning"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3090
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3092
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method private reportFrequentAlarmListForceStop()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 3095
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3096
    .local v3, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3098
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 3099
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;

    .line 3100
    .local v0, "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    iget-boolean v6, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isForcestopReported:Z

    if-eq v6, v9, :cond_0

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isSerious:Z

    if-nez v6, :cond_1

    .line 3098
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3104
    :cond_1
    iput-boolean v9, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isForcestopReported:Z

    .line 3106
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->getReportString(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;Z)Ljava/lang/String;

    move-result-object v4

    .line 3107
    .local v4, "reportString":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v6, :cond_0

    const-string v6, "AlarmWakeupCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportFrequentAlarmListForceStop: reportString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3111
    .end local v0    # "alarmWakeupRecord":Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
    .end local v4    # "reportString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 3112
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_GUARD_ELF_MONITOR_FORCESTOP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3113
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "data"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3114
    const-string v6, "type"

    const-string v7, "alarm"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3115
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3116
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockReport:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3119
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private scheduleAlarmWakeupCheck()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    .line 3236
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v6, 0xafc80

    add-long/2addr v2, v6

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x1

    move-wide v6, v4

    move-object v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3238
    return-void
.end method


# virtual methods
.method public SyncAlarmHandle(ILandroid/app/PendingIntent;)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x2

    .line 3286
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    :cond_0
    move v1, p1

    .line 3304
    .end local p1    # "type":I
    .local v1, "type":I
    :goto_0
    return v1

    .line 3290
    .end local v1    # "type":I
    .restart local p1    # "type":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isSyncAlarmWakeupFrequent:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 3291
    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3292
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "syncmanager.SYNC_ALARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3293
    move v2, p1

    .line 3294
    .local v2, "typeOld":I
    if-nez p1, :cond_3

    .line 3295
    const/4 p1, 0x1

    .end local v0    # "tag":Ljava/lang/String;
    .end local v2    # "typeOld":I
    :cond_2
    :goto_1
    move v1, p1

    .line 3304
    .end local p1    # "type":I
    .restart local v1    # "type":I
    goto :goto_0

    .line 3296
    .end local v1    # "type":I
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v2    # "typeOld":I
    .restart local p1    # "type":I
    :cond_3
    if-ne p1, v5, :cond_2

    .line 3297
    const/4 p1, 0x3

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 3242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3243
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    .line 3245
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmTimeoutCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3247
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mOppoGuardElfFeature:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3248
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 3249
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeupNumRecord:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3250
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmWakeupCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3251
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportFrequentAlarm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3252
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isSyncAlarmWakeupFrequent:Z

    .line 3253
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3282
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3256
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    .line 3257
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-eqz v1, :cond_2

    .line 3258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAcquireTime:J

    .line 3260
    :cond_2
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmTimeoutCheck:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3262
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mOppoGuardElfFeature:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3263
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isSyncAlarmWakeupFrequent:Z

    .line 3264
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3265
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3266
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OppoGuardElfConfigUtil;->getThresholdWarningIntervalPerWakeup()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWarningPerWakeup:J

    .line 3267
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OppoGuardElfConfigUtil;->getThresholdIntervalPerWakeup()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J

    .line 3268
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OppoGuardElfConfigUtil;->getThresholdWorstIntervalPerWakeup()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWorstPerWakeup:J

    .line 3269
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->ADBG:Z

    if-eqz v1, :cond_3

    const-string v1, "AlarmWakeupCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thresholdWarningPerWakeup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWarningPerWakeup:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thresholdSeriousPerWakeup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thresholdWorstPerWakeup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWorstPerWakeup:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeupNumRecord:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3273
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->scheduleAlarmWakeupCheck()V

    goto/16 :goto_0

    .line 3276
    :cond_4
    const-string v1, "android.intent.action.ALARM_WAKEUP_CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3277
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mOppoGuardElfFeature:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3278
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3279
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmWakeupCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
