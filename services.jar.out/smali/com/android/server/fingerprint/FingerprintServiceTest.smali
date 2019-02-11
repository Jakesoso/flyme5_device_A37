.class public Lcom/android/server/fingerprint/FingerprintServiceTest;
.super Ljava/lang/Object;
.source "FingerprintServiceTest.java"


# static fields
.field public static final API_NAME_DEFAULT:Ljava/lang/String; = "none"

.field public static final API_NAME_GET_FP_IDS:Ljava/lang/String; = "getFpIDs"

.field public static final API_NAME_GET_FP_NAME:Ljava/lang/String; = "getFpName"

.field public static final API_NAME_SELF_TEST:Ljava/lang/String; = "selfTest"

.field public static DEBUG:Z = false

.field public static final PROP_TEST_API_CALL:Ljava/lang/String; = "fingerprint.apicall.test"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceTest;->DEBUG:Z

    .line 28
    const-string v0, "FingerprintServiceTest"

    sput-object v0, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fingerprintService"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintServiceTest;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintServiceTest;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    .line 41
    return-void
.end method


# virtual methods
.method gotoApiCallTest()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 51
    const-string v5, "fingerprint.apicall.test"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "apiName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    :cond_0
    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    const-string v6, " do not check Api call "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    const-string v6, "gotoApiCallTest()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    const-string v5, "selfTest"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 57
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintServiceTest;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5}, Lcom/android/server/fingerprint/FingerprintService;->selfTest()Z

    move-result v4

    .line 58
    .local v4, "selfTestResult":Z
    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selfTestResult = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v4    # "selfTestResult":Z
    :cond_3
    :goto_0
    return-void

    .line 59
    :cond_4
    const-string v5, "getFpName"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 60
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintServiceTest;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v7, v7}, Lcom/android/server/fingerprint/FingerprintService;->getFpName(II)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "fpName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fpName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v2    # "fpName":Ljava/lang/String;
    :cond_5
    const-string v5, "getFpIDs"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 63
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintServiceTest;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v7}, Lcom/android/server/fingerprint/FingerprintService;->getFpIDs(I)[I

    move-result-object v1

    .line 64
    .local v1, "fpIds":[I
    if-eqz v1, :cond_3

    .line 65
    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " fpIds.length"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 67
    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fpIds["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "fpIds":[I
    .end local v3    # "index":I
    :cond_6
    sget-object v5, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    const-string v6, "api call name do not match any one, do nothing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method needTestApiCall()Z
    .locals 5

    .prologue
    .line 44
    const-string v2, "fingerprint.apicall.test"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "apiName":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 46
    .local v1, "res":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintServiceTest;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/fingerprint/FingerprintServiceTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needTestApiCall, apiName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return v1

    .line 45
    .end local v1    # "res":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
