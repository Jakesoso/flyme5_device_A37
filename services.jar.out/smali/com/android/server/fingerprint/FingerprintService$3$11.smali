.class Lcom/android/server/fingerprint/FingerprintService$3$11;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$3;->onTouchUp(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$3;

.field final synthetic val$deviceId:J


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$3;J)V
    .locals 0

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$3$11;->this$1:Lcom/android/server/fingerprint/FingerprintService$3;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$3$11;->val$deviceId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1811
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "dispatchTouchUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3$11;->this$1:Lcom/android/server/fingerprint/FingerprintService$3;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$3$11;->val$deviceId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->dispatchTouchUp(J)V

    .line 1813
    return-void
.end method
