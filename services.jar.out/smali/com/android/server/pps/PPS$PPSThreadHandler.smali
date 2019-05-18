.class Lcom/android/server/pps/PPS$PPSThreadHandler;
.super Landroid/os/Handler;
.source "PPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pps/PPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPSThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_APP_RESUMED:I = 0x0

.field private static final MESSAGE_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/pps/PPS;


# direct methods
.method public constructor <init>(Lcom/android/server/pps/PPS;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/pps/PPS$PPSThreadHandler;->this$0:Lcom/android/server/pps/PPS;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    return-void
.end method

.method private startTimer(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 192
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pps/PPS$PPSThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pps/PPS$PPSThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pps/PPS$PPSThreadHandler;->removeMessages(I)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :pswitch_0
    return-void

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
