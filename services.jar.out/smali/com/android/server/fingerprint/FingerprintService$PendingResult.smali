.class Lcom/android/server/fingerprint/FingerprintService$PendingResult;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 1827
    .local p0, "this":Lcom/android/server/fingerprint/FingerprintService$PendingResult;, "Lcom/android/server/fingerprint/FingerprintService$PendingResult<TR;>;"
    .local p2, "defResult":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1828
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mResult:Ljava/lang/Object;

    .line 1829
    return-void
.end method


# virtual methods
.method public await()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 1833
    .local p0, "this":Lcom/android/server/fingerprint/FingerprintService$PendingResult;, "Lcom/android/server/fingerprint/FingerprintService$PendingResult<TR;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mResult:Ljava/lang/Object;

    return-object v0

    .line 1834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 1846
    .local p0, "this":Lcom/android/server/fingerprint/FingerprintService$PendingResult;, "Lcom/android/server/fingerprint/FingerprintService$PendingResult<TR;>;"
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1847
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 1841
    .local p0, "this":Lcom/android/server/fingerprint/FingerprintService$PendingResult;, "Lcom/android/server/fingerprint/FingerprintService$PendingResult<TR;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mResult:Ljava/lang/Object;

    .line 1842
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1843
    return-void
.end method
