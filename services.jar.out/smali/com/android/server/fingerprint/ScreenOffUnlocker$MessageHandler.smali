.class public Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;
.super Landroid/os/Handler;
.source "ScreenOffUnlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/ScreenOffUnlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_DELAY_TIMEOUT:J = 0x32L

.field public static final MSG_GOTO_SLEEP:I = 0x6

.field public static final MSG_GOTO_SLEEP_ON_TOUCH_UP:I = 0x8

.field public static final MSG_HOMEKEY_INVALID_TIMEOUT:I = 0x7

.field public static final MSG_ON_GOTO_SLEEP_FINISHED:I = 0x14

.field public static final MSG_ON_HOMEKEY_DOWN:I = 0x3

.field public static final MSG_POWERKEY_PRESSED:I = 0x5

.field public static final MSG_SCREEN_OFF:I = 0x2

.field public static final MSG_SCREEN_ON:I = 0x1

.field public static final MSG_TOUCHDOWN_TIMEOUT:I = 0x4

.field public static final MSG_WAITING_FOR_KEYGUARD_FINISHED:I = 0x10

.field public static final MSG_WAKEUP:I = 0x11

.field public static final MSG_WAKEUP_FINISHED:I = 0x12

.field public static final TIMEOUT_GOTO_SLEEP_ON_TOUCH_UP:I = 0x1f4

.field public static final TIMEOUT_WAITING_FOR_KEYGUARD_FINISHED:I = 0x12c

.field public static final TOUCHDOWN_TIMEOUT:I = 0x320


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    .line 118
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleScreenOn()V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleOnHomeKeyDown()V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleOnTouchUp(II)V

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handlePowerKeyPressed()V

    goto :goto_0

    .line 138
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleGotoSleep()V

    goto :goto_0

    .line 141
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleWakeup()V

    goto :goto_0

    .line 144
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleWakeupFinished()V

    goto :goto_0

    .line 148
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleGotoSleepFinished()V

    goto :goto_0

    .line 152
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleTimeoutForWaitingKeyguardFinished()V

    goto :goto_0

    .line 155
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleHomeKeyValidTimeout(Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
