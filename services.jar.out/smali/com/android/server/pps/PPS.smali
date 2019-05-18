.class public final Lcom/android/server/pps/PPS;
.super Ljava/lang/Object;
.source "PPS.java"

# interfaces
.implements Lcom/android/server/am/IActivityStateNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pps/PPS$2;,
        Lcom/android/server/pps/PPS$PPSThreadHandler;
    }
.end annotation


# static fields
.field public static final SCN_APP_ROTATE:I = 0x2

.field public static final SCN_APP_SWITCH:I = 0x1

.field public static final SCN_NONE:I = 0x0

.field public static final STATE_DEAD:I = 0x3

.field public static final STATE_DESTROYED:I = 0x2

.field public static final STATE_PAUSED:I = 0x0

.field public static final STATE_RESUMED:I = 0x1

.field public static final STATE_STOPPED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PPS"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/pps/PPS$PPSThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

.field mPerfServiceHandle_HighPerformance:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pps/PPS;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pps/PPS;->mPerfServiceHandle_HighPerformance:I

    .line 203
    new-instance v0, Lcom/android/server/pps/PPS$1;

    invoke-direct {v0, p0}, Lcom/android/server/pps/PPS$1;-><init>(Lcom/android/server/pps/PPS;)V

    iput-object v0, p0, Lcom/android/server/pps/PPS;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/server/pps/PPS;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public static native nativePPSInit(I)I
.end method

.method public static native nativePPSNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativePPSSetDefaultFps(I)I
.end method

.method public static native nativePPSSetFavorPid(I)I
.end method

.method public static native nativePPSSetFps(I)I
.end method


# virtual methods
.method public notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "actState"    # Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .prologue
    .line 118
    sget-object v1, Lcom/android/server/pps/PPS$2;->$SwitchMap$com$android$server$am$IActivityStateNotifier$ActivityState:[I

    invoke-virtual {p4}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const/4 v0, 0x0

    .line 135
    .local v0, "state":I
    :goto_1
    const/4 v1, 0x0

    invoke-static {p1, p3, v0, v1}, Lcom/android/server/pps/PPS;->nativePPSNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 123
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 124
    .restart local v0    # "state":I
    goto :goto_1

    .line 126
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    .line 127
    .restart local v0    # "state":I
    goto :goto_1

    .line 129
    .end local v0    # "state":I
    :pswitch_3
    const/4 v0, 0x4

    .line 130
    .restart local v0    # "state":I
    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyAppDied(ILjava/util/HashSet;)V
    .locals 4
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "packageList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/pps/PPS;->nativePPSNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 147
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 108
    const-string v0, "PPS"

    const-string v1, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/server/pps/PPS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pps/PPS;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pps/PPS;->mHandler:Lcom/android/server/pps/PPS$PPSThreadHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    return-void
.end method
