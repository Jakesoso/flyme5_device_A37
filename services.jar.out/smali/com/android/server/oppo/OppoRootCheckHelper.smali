.class public final Lcom/android/server/oppo/OppoRootCheckHelper;
.super Ljava/lang/Object;
.source "OppoRootCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;
    }
.end annotation


# static fields
.field private static final CHECK_START_ACTION:Ljava/lang/String; = "oppo.intent.action.CheckSystemFile"

.field private static final MSG_CANNEL_ROOT_NOTICE_START:I = 0x3ea

.field private static final MSG_ROOT_CHECK_START:I = 0x3e9

.field private static final NOTIFY_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoCheckHelper"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasNotify:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    .line 50
    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandler:Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;

    .line 57
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OppoCheckHelper"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mConnected:Z

    .line 59
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHasNotify:Z

    .line 97
    new-instance v1, Lcom/android/server/oppo/OppoRootCheckHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/oppo/OppoRootCheckHelper$1;-><init>(Lcom/android/server/oppo/OppoRootCheckHelper;)V

    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    .line 86
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "oppo.intent.action.SYSTEM_HAVE_BEEN_BROKEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "oppo.intent.action.ABANDON_SYSTEM_REPAIR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v1, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;

    iget-object v2, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;-><init>(Lcom/android/server/oppo/OppoRootCheckHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandler:Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/oppo/OppoRootCheckHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoRootCheckHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/oppo/OppoRootCheckHelper;->notifyRootTips()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oppo/OppoRootCheckHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoRootCheckHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/oppo/OppoRootCheckHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoRootCheckHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/oppo/OppoRootCheckHelper;->sendStartCheckMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/oppo/OppoRootCheckHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoRootCheckHelper;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/oppo/OppoRootCheckHelper;->sendCancelRootNoticeMessage()V

    return-void
.end method

.method private notifyRootTips()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 134
    const-string v9, "OppoCheckHelper"

    const-string v10, "----------- notifyRootTips"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 136
    .local v4, "nm":Landroid/app/NotificationManager;
    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc0804e4

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, "btm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/content/Intent;

    const-string v9, "oppo.intent.action.CheckSystemFile"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "acIntent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v9, v12, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 141
    .local v6, "pIntent":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc040545

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "title":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc040546

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "subText":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz v7, :cond_0

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 149
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0xc0804e3

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.oppo.ota.show_root_risk"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const/high16 v9, 0x800000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    iget-object v9, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 162
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 163
    .local v5, "notification":Landroid/app/Notification;
    const/4 v9, 0x2

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 164
    invoke-virtual {v4, v12, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 166
    iput-boolean v13, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHasNotify:Z

    goto :goto_0
.end method

.method private sendCancelRootNoticeMessage()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 128
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandler:Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method private sendStartCheckMessage()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 120
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 121
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper;->mHandler:Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method
