.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->getAuthToken(Ljava/lang/String;JI)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$challenge:J

.field final synthetic val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Lcom/android/server/fingerprint/FingerprintService$PendingResult;JI)V
    .locals 1

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    iput-wide p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$challenge:J

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x0

    const/16 v2, 0x109

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->tryPreOperation(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$challenge:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startGetAuthToken(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->setResult(Ljava/lang/Object;)V

    .line 1977
    :goto_0
    return-void

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->cancel()V

    goto :goto_0
.end method
