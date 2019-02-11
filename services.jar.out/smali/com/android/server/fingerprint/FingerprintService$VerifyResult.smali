.class public final enum Lcom/android/server/fingerprint/FingerprintService$VerifyResult;
.super Ljava/lang/Enum;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/fingerprint/FingerprintService$VerifyResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

.field public static final enum ERROR:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

.field public static final enum FAILED:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

.field public static final enum NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

.field public static final enum SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->FAILED:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->ERROR:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->FAILED:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->ERROR:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->$VALUES:[Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/fingerprint/FingerprintService$VerifyResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    return-object v0
.end method

.method public static values()[Lcom/android/server/fingerprint/FingerprintService$VerifyResult;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->$VALUES:[Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    invoke-virtual {v0}, [Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    return-object v0
.end method
