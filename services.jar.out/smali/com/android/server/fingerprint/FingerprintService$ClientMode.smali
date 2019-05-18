.class public final enum Lcom/android/server/fingerprint/FingerprintService$ClientMode;
.super Ljava/lang/Enum;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/fingerprint/FingerprintService$ClientMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field public static final enum AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field public static final enum ENROLL:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field public static final enum IMAGE_QUALITY:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field public static final enum NONE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field public static final enum REMOVE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field public static final enum TOUCH_LISTEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->NONE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const-string v1, "ENROLL"

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->ENROLL:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const-string v1, "AUTHEN"

    invoke-direct {v0, v1, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->REMOVE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const-string v1, "IMAGE_QUALITY"

    invoke-direct {v0, v1, v7}, Lcom/android/server/fingerprint/FingerprintService$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->IMAGE_QUALITY:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const-string v1, "TOUCH_LISTEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->TOUCH_LISTEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->NONE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->ENROLL:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->REMOVE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->IMAGE_QUALITY:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->TOUCH_LISTEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->$VALUES:[Lcom/android/server/fingerprint/FingerprintService$ClientMode;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/fingerprint/FingerprintService$ClientMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    const-class v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/fingerprint/FingerprintService$ClientMode;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->$VALUES:[Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v0}, [Lcom/android/server/fingerprint/FingerprintService$ClientMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    return-object v0
.end method
