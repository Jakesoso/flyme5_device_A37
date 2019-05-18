.class Lcom/android/server/fingerprint/HealthMonitor$MyHandler;
.super Landroid/os/Handler;
.source "HealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/HealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/HealthMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/HealthMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->this$0:Lcom/android/server/fingerprint/HealthMonitor;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/HealthMonitor;Landroid/os/Looper;Lcom/android/server/fingerprint/HealthMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/fingerprint/HealthMonitor;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/fingerprint/HealthMonitor$1;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;-><init>(Lcom/android/server/fingerprint/HealthMonitor;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->this$0:Lcom/android/server/fingerprint/HealthMonitor;

    # getter for: Lcom/android/server/fingerprint/HealthMonitor;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/fingerprint/HealthMonitor;->access$100(Lcom/android/server/fingerprint/HealthMonitor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/fingerprint/HealthMonitor$MyHandler;->this$0:Lcom/android/server/fingerprint/HealthMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/fingerprint/HealthMonitor;->handleFingerprintdBinderCallCheck(Ljava/lang/String;I)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
