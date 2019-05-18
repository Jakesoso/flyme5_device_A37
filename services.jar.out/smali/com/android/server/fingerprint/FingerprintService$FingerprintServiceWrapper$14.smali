.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->getAuthenticatorId(Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Lcom/android/server/fingerprint/FingerprintService$PendingResult;)V
    .locals 0

    .prologue
    .line 2293
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x0

    const/16 v2, 0x108

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->tryPreOperation(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getAuthenticatorId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->setResult(Ljava/lang/Object;)V

    .line 2301
    :goto_0
    return-void

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$14;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->cancel()V

    goto :goto_0
.end method
