.class Lcom/android/server/fingerprint/ScreenOffUnlocker$1;
.super Ljava/lang/Object;
.source "ScreenOffUnlocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/ScreenOffUnlocker;->userActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$1;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 329
    sget-boolean v3, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$1;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    # getter for: Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->access$200(Lcom/android/server/fingerprint/ScreenOffUnlocker;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 331
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 332
    .local v0, "now":J
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 333
    return-void
.end method
