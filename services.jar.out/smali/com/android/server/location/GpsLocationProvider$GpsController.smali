.class Lcom/android/server/location/GpsLocationProvider$GpsController;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsController"
.end annotation


# static fields
.field private static final ACTION_BIND_POWER_SERVICE:Ljava/lang/String; = "com.gnss.power.service"

.field private static final ACTION_POWER_SAVER_NOTIFICATION:Ljava/lang/String; = "com.user.power.saver.notification"

.field private static final ACTION_START_NOTIFICATION:Ljava/lang/String; = "com.user.start.notification"

.field private static final ACTION_STOP_NAVIGATING_NOTIFICATION:Ljava/lang/String; = "com.user.stop.navigating.notification"

.field private static final ACTION_USER_AGREE:Ljava/lang/String; = "android.user.agree"

.field private static final ACTION_USER_DISCARD:Ljava/lang/String; = "android.user.discard"

.field private static final ACTION_USER_WAKE_GPS:Ljava/lang/String; = "android.user.wake.gps"

.field private static final GPS_POWER_INTERVAL:I = 0x3e8

.field private static final GPS_POWER_ON:I = 0x0

.field private static final GPS_POWER_ON_WITH_DISCARD:I = 0x2

.field private static final GPS_POWER_ON_WITH_WAKE:I = 0x1

.field private static final GPS_POWER_SAVER_WITH_AGREE:I = 0x4

.field private static final GPS_POWER_SAVER_WITH_DELAY:I = 0x3

.field private static final MSG_CONTROL_RUNNING:I = 0x68

.field private static final MSG_CONTROL_START:I = 0x67

.field private static final MSG_CONTROL_STOP:I = 0x69

.field private static final MSG_STOP_AFTER_DELAY:I = 0x66

.field private static final MSG_WILL_STOP_GPS:I = 0x65

.field private static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.gnss.power"

.field private static final TAG:Ljava/lang/String; = "GpsController"

.field private static final TIME_DELAY_STOP_GPS:J = 0xea60L


# instance fields
.field private final IsDebug:Z

.field private mGpsMode:I

.field private final mGpsMonitor:Lcom/android/server/location/GpsMonitor;

.field private mIsDoingStop:Z

.field private final mLocMgr:Landroid/location/LocationManager;

.field private mNeedRebind:Z

.field private mNeedStopGps:Z

.field private myConnection:Landroid/content/ServiceConnection;

.field private myHander:Landroid/os/Handler;

.field private myLocationListener:Landroid/location/LocationListener;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2682
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2645
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    .line 2646
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    .line 2652
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    .line 3011
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    .line 3043
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$2;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    .line 3063
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$3;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 3078
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$4;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    .line 2683
    new-instance v0, Lcom/android/server/location/GpsMonitor;

    invoke-direct {v0}, Lcom/android/server/location/GpsMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    .line 2684
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    .line 2686
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->registBroadcast()V

    .line 2687
    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->willStopGps()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider$GpsController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/location/GpsLocationProvider$GpsController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # I

    .prologue
    .line 2642
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    return p1
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider$GpsController;F[F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # F
    .param p2, "x2"    # [F

    .prologue
    .line 2642
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsController;->changeGpsMode(F[F)V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # Z

    .prologue
    .line 2642
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider$GpsController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # Z

    .prologue
    .line 2642
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->wakeGps()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->userAgreed()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2642
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->userDiscard()V

    return-void
.end method

.method private bindNotificationService()V
    .locals 4

    .prologue
    .line 2720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gnss.power.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2721
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.gnss.power"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2723
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2724
    return-void
.end method

.method private changeGpsMode(F[F)V
    .locals 2
    .param p1, "speed"    # F
    .param p2, "snrs"    # [F

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GpsMonitor;->needStopGps(F[F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    .line 2749
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->shouldStopGps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2750
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2751
    const-string v0, "GpsController"

    const-string v1, "will stop gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2763
    :cond_1
    :goto_0
    return-void

    .line 2755
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    if-eqz v0, :cond_1

    .line 2756
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_3

    .line 2757
    const-string v0, "GpsController"

    const-string v1, "--remove message MSG_STOP_AFTER_DELAY--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2760
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopNavigatingNotify()V

    goto :goto_0
.end method

.method private enterPowerSavingMode()V
    .locals 6

    .prologue
    .line 2881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2883
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->powerSaverNotify()V

    .line 2884
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2885
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopController()V

    .line 2886
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2887
    return-void
.end method

.method private exitPowerSavingMode()V
    .locals 2

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2896
    return-void
.end method

.method private powerSaverNotify()V
    .locals 2

    .prologue
    .line 2917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.power.saver.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2918
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2919
    return-void
.end method

.method private registBroadcast()V
    .locals 3

    .prologue
    .line 2994
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2995
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.user.wake.gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2996
    const-string v1, "android.user.discard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2997
    const-string v1, "android.user.agree"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2999
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3000
    return-void
.end method

.method private shouldStopGps()Z
    .locals 3

    .prologue
    .line 2850
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2851
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running shouldStopGps mIsDoingStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startNotify()V
    .locals 4

    .prologue
    .line 2904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.start.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2906
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "GpsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start notify : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2909
    return-void
.end method

.method private unBindNotificationService()V
    .locals 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2735
    return-void
.end method

.method private unRegistBroadcast()V
    .locals 2

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3009
    return-void
.end method

.method private userAgreed()V
    .locals 3

    .prologue
    .line 2955
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2956
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user agree mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_1

    .line 2960
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2963
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2964
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2965
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V

    .line 2966
    return-void
.end method

.method private userDiscard()V
    .locals 3

    .prologue
    .line 2974
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2975
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user discard mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_1

    .line 2979
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2982
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2983
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2984
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopController()V

    .line 2986
    return-void
.end method

.method private wakeGps()V
    .locals 3

    .prologue
    .line 2937
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2938
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user wake mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2942
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2944
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2945
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->exitPowerSavingMode()V

    .line 2946
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 2947
    return-void
.end method

.method private willStopGps()V
    .locals 4

    .prologue
    .line 2863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2864
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->startNotify()V

    .line 2866
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2867
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running willstopGps Message  mGpsMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_1

    .line 2871
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2873
    :cond_1
    return-void
.end method


# virtual methods
.method public getGpsPowerMode()I
    .locals 1

    .prologue
    .line 2828
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    return v0
.end method

.method public resistStartGps()Z
    .locals 3

    .prologue
    .line 2837
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2838
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running resistStartGps mGpsMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2771
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2772
    const-string v0, "GpsController"

    const-string v1, "Set up the running environment!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2776
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2778
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    if-eqz v0, :cond_1

    .line 2779
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->bindNotificationService()V

    .line 2782
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2783
    return-void
.end method

.method public startController()V
    .locals 2

    .prologue
    .line 2695
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2696
    const-string v0, "GpsController"

    const-string v1, "----startController----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2699
    return-void
.end method

.method public stopController()V
    .locals 2

    .prologue
    .line 2707
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2708
    const-string v0, "GpsController"

    const-string v1, "----stopController----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2711
    return-void
.end method

.method public stopNavigatingNotify()V
    .locals 2

    .prologue
    .line 2927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.stop.navigating.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2928
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2929
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 2791
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 2792
    const-string v0, "GpsController"

    const-string v1, "Tear down the running environment!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2797
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    if-nez v0, :cond_1

    .line 2798
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->unBindNotificationService()V

    .line 2801
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->exitPowerSavingMode()V

    .line 2802
    return-void
.end method
