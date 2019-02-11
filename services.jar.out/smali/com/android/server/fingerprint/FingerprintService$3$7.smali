.class Lcom/android/server/fingerprint/FingerprintService$3$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$3;->onImageQualityUpdated(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$3;

.field final synthetic val$deviceId:J

.field final synthetic val$image_quality:I

.field final synthetic val$successed:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$3;JII)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$3;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->val$successed:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->val$image_quality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1763
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "dispatchImageQualityUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$3;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->val$deviceId:J

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->val$successed:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$3$7;->val$image_quality:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchImageQualityUpdated(JII)V

    .line 1765
    return-void
.end method
