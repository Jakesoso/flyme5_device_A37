.class public final enum Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;
.super Ljava/lang/Enum;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FINGERSTATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

.field public static final enum FINGER_DOWN:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

.field public static final enum FINGER_UP:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    const-string v1, "FINGER_UP"

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_UP:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    const-string v1, "FINGER_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_DOWN:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_UP:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_DOWN:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->$VALUES:[Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->$VALUES:[Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    invoke-virtual {v0}, [Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    return-object v0
.end method
